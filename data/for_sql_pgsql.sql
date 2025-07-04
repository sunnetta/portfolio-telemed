CREATE TABLE "Patient"(
    "id" BIGINT NOT NULL,
    "date_of_create" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "middle_name" CHAR(255) NOT NULL,
    "name" CHAR(255) NOT NULL,
    "last_name" CHAR(255) NOT NULL,
    "blood_type" CHAR(255) NOT NULL,
    "gender_name" CHAR(255) NOT NULL,
    "date_of_birth" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL
);
ALTER TABLE
    "Patient" ADD PRIMARY KEY("id");
CREATE TABLE "StatusConsultation"(
    "id" INTEGER NOT NULL,
    "status_name" CHAR(255) NOT NULL
);
ALTER TABLE
    "StatusConsultation" ADD PRIMARY KEY("id");
CREATE TABLE "Specialization"(
    "id" INTEGER NOT NULL,
    "name" CHAR(255) NOT NULL
);
ALTER TABLE
    "Specialization" ADD PRIMARY KEY("id");
CREATE TABLE "Consultation"(
    "id" BIGINT NOT NULL,
    "slot_id" BIGINT NOT NULL,
    "link_for_connection" VARCHAR(255) NOT NULL,
    "date_of_creation" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "status_id" INTEGER NOT NULL,
    "review_id" BIGINT NULL,
    "patient_id" BIGINT NOT NULL
);
ALTER TABLE
    "Consultation" ADD PRIMARY KEY("id");
COMMENT
ON COLUMN
    "Consultation"."slot_id" IS 'Убрать так как связь через slot_consult';
CREATE TABLE "StatusSlot"(
    "id" INTEGER NOT NULL,
    "status_name" CHAR(255) NOT NULL
);
ALTER TABLE
    "StatusSlot" ADD PRIMARY KEY("id");
CREATE TABLE "Slots"(
    "id" BIGINT NOT NULL,
    "date_edit" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "date_of_create" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "time_start" TIME(0) WITHOUT TIME ZONE NOT NULL,
    "date" DATE NOT NULL,
    "time_duration" TIME(0) WITHOUT TIME ZONE NOT NULL,
    "status_id" INTEGER NOT NULL,
    "doctor_id" BIGINT NOT NULL
);
ALTER TABLE
    "Slots" ADD PRIMARY KEY("id");
CREATE TABLE "Doctor"(
    "id" BIGINT NOT NULL,
    "photo" VARCHAR(255) NOT NULL,
    "cost_consultations" DOUBLE PRECISION NOT NULL,
    "medical_experience_date" DATE NOT NULL,
    "date_of_creation" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "last_name" CHAR(255) NOT NULL,
    "phone" CHAR(255) NOT NULL,
    "e-mail" CHAR(255) NOT NULL,
    "date_of_birth" DATE NOT NULL,
    "category" CHAR(255) NOT NULL,
    "gender_name" CHAR(255) NOT NULL,
    "license_number" CHAR(255) NOT NULL,
    "middle_name" CHAR(255) NOT NULL,
    "businesscard" VARCHAR(255) NOT NULL,
    "specialization_id" INTEGER NOT NULL,
    "professional_achievements" VARCHAR(255) NOT NULL,
    "name" CHAR(255) NOT NULL,
    "account_id" BIGINT NOT NULL,
    "notification_id" BIGINT NOT NULL
);
ALTER TABLE
    "Doctor" ADD PRIMARY KEY("id");
CREATE TABLE "Review"(
    "id" BIGINT NOT NULL,
    "rating" INTEGER NOT NULL,
    "text" TEXT NOT NULL
);
ALTER TABLE
    "Review" ADD PRIMARY KEY("id");
CREATE TABLE "Account"(
    "id" BIGINT NOT NULL,
    "login" CHAR(255) NOT NULL,
    "password" CHAR(255) NOT NULL
);
ALTER TABLE
    "Account" ADD PRIMARY KEY("id");
ALTER TABLE
    "Slots" ADD CONSTRAINT "slots_status_id_foreign" FOREIGN KEY("status_id") REFERENCES "StatusSlot"("id");
ALTER TABLE
    "Slots" ADD CONSTRAINT "slots_doctor_id_foreign" FOREIGN KEY("doctor_id") REFERENCES "Doctor"("id");
ALTER TABLE
    "Consultation" ADD CONSTRAINT "consultation_status_id_foreign" FOREIGN KEY("status_id") REFERENCES "StatusConsultation"("id");
ALTER TABLE
    "Consultation" ADD CONSTRAINT "consultation_review_id_foreign" FOREIGN KEY("review_id") REFERENCES "Review"("id");
ALTER TABLE
    "Doctor" ADD CONSTRAINT "doctor_account_id_foreign" FOREIGN KEY("account_id") REFERENCES "Account"("id");
ALTER TABLE
    "Consultation" ADD CONSTRAINT "consultation_slot_id_foreign" FOREIGN KEY("slot_id") REFERENCES "Slots"("id");
ALTER TABLE
    "Consultation" ADD CONSTRAINT "consultation_patient_id_foreign" FOREIGN KEY("patient_id") REFERENCES "Patient"("id");
ALTER TABLE
    "Doctor" ADD CONSTRAINT "doctor_specialization_id_foreign" FOREIGN KEY("specialization_id") REFERENCES "Specialization"("id");