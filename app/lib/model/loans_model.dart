import 'dart:convert';

Loans loansFromJson(String str) => Loans.fromJson(json.decode(str));

String loansToJson(Loans data) => json.encode(data.toJson());

class Loans {
  Loans({
    this.loanId,
    this.loanProductId,
    this.borrowerId,
    this.loanApplicationId,
    this.loanDisbursedById,
    this.loanPrincipalAmount,
    this.loanReleasedDate,
    this.loanInterestMethod,
    this.loanInterestType,
    this.loanInterestPeriod,
    this.loanInterest,
    this.loanDurationPeriod,
    this.loanDuration,
    this.loanPaymentSchemeId,
    this.loanNumOfRepayments,
    this.loanDecimalPlaces,
    this.loanInterestStartDate,
    this.loanFeesProRata,
    this.loanDoNotAdjustRemainingProRata,
    this.loanFirstRepaymentProRata,
    this.loanFirstRepaymentDate,
    this.firstRepaymentAmount,
    this.lastRepaymentAmount,
    this.loanOverrideMaturityDate,
    this.overrideEachRepaymentAmount,
    this.loanInterestEachRepaymentProRata,
    this.loanInterestSchedule,
    this.loanPrincipalSchedule,
    this.loanBalloonRepaymentAmount,
    this.automaticPayments,
    this.paymentPostingPeriod,
    this.totalAmountDue,
    this.balanceAmount,
    this.dueDate,
    this.totalPaid,
    this.childStatusId,
    this.loanFeeId4732,
    this.loanOverrideSysGenPenalty,
    this.loanManualPenaltyAmount,
    this.loanStatusId,
    this.loanTitle,
    this.loanDescription,
    this.borrowerCountry,
    this.borrowerFullname,
    this.borrowerFirstname,
    this.borrowerLastname,
    this.borrowerBusinessName,
    this.borrowerUniqueNumber,
    this.borrowerGender,
    this.borrowerTitle,
    this.borrowerMobile,
    this.borrowerEmail,
    this.borrowerDob,
    this.borrowerAddress,
    this.borrowerCity,
    this.borrowerProvince,
    this.borrowerZipcode,
    this.borrowerLandline,
    this.borrowerWorkingStatus,
    this.borrowerCreditScore,
    this.borrowerDescription,
    this.borrowerAccessIds,
    this.borrowerPhoto,
  });

  int loanId;
  int loanProductId;
  int borrowerId;
  String loanApplicationId;
  int loanDisbursedById;
  String loanPrincipalAmount;
  String loanReleasedDate;
  String loanInterestMethod;
  String loanInterestType;
  String loanInterestPeriod;
  String loanInterest;
  String loanDurationPeriod;
  int loanDuration;
  int loanPaymentSchemeId;
  int loanNumOfRepayments;
  String loanDecimalPlaces;
  dynamic loanInterestStartDate;
  dynamic loanFeesProRata;
  dynamic loanDoNotAdjustRemainingProRata;
  dynamic loanFirstRepaymentProRata;
  dynamic loanFirstRepaymentDate;
  dynamic firstRepaymentAmount;
  dynamic lastRepaymentAmount;
  dynamic loanOverrideMaturityDate;
  dynamic overrideEachRepaymentAmount;
  dynamic loanInterestEachRepaymentProRata;
  dynamic loanInterestSchedule;
  dynamic loanPrincipalSchedule;
  dynamic loanBalloonRepaymentAmount;
  dynamic automaticPayments;
  dynamic paymentPostingPeriod;
  dynamic totalAmountDue;
  String balanceAmount;
  String dueDate;
  String totalPaid;
  int childStatusId;
  String loanFeeId4732;
  int loanOverrideSysGenPenalty;
  String loanManualPenaltyAmount;
  int loanStatusId;
  dynamic loanTitle;
  String loanDescription;
  String borrowerCountry;
  dynamic borrowerFullname;
  String borrowerFirstname;
  String borrowerLastname;
  String borrowerBusinessName;
  String borrowerUniqueNumber;
  String borrowerGender;
  int borrowerTitle;
  String borrowerMobile;
  String borrowerEmail;
  String borrowerDob;
  String borrowerAddress;
  String borrowerCity;
  String borrowerProvince;
  String borrowerZipcode;
  String borrowerLandline;
  String borrowerWorkingStatus;
  String borrowerCreditScore;
  String borrowerDescription;
  BorrowerAccessIds borrowerAccessIds;
  dynamic borrowerPhoto;

  factory Loans.fromJson(Map<String, dynamic> json) => Loans(
        loanId: json["loan_id"],
        loanProductId: json["loan_product_id"],
        borrowerId: json["borrower_id"],
        loanApplicationId: json["loan_application_id"],
        loanDisbursedById: json["loan_disbursed_by_id"],
        loanPrincipalAmount: json["loan_principal_amount"],
        loanReleasedDate: json["loan_released_date"],
        loanInterestMethod: json["loan_interest_method"],
        loanInterestType: json["loan_interest_type"],
        loanInterestPeriod: json["loan_interest_period"],
        loanInterest: json["loan_interest"],
        loanDurationPeriod: json["loan_duration_period"],
        loanDuration: json["loan_duration"],
        loanPaymentSchemeId: json["loan_payment_scheme_id"],
        loanNumOfRepayments: json["loan_num_of_repayments"],
        loanDecimalPlaces: json["loan_decimal_places"],
        loanInterestStartDate: json["loan_interest_start_date"],
        loanFeesProRata: json["loan_fees_pro_rata"],
        loanDoNotAdjustRemainingProRata:
            json["loan_do_not_adjust_remaining_pro_rata"],
        loanFirstRepaymentProRata: json["loan_first_repayment_pro_rata"],
        loanFirstRepaymentDate: json["loan_first_repayment_date"],
        firstRepaymentAmount: json["first_repayment_amount"],
        lastRepaymentAmount: json["last_repayment_amount"],
        loanOverrideMaturityDate: json["loan_override_maturity_date"],
        overrideEachRepaymentAmount: json["override_each_repayment_amount"],
        loanInterestEachRepaymentProRata:
            json["loan_interest_each_repayment_pro_rata"],
        loanInterestSchedule: json["loan_interest_schedule"],
        loanPrincipalSchedule: json["loan_principal_schedule"],
        loanBalloonRepaymentAmount: json["loan_balloon_repayment_amount"],
        automaticPayments: json["automatic_payments"],
        paymentPostingPeriod: json["payment_posting_period"],
        totalAmountDue: json["total_amount_due"],
        balanceAmount: json["balance_amount"],
        dueDate: json["due_date"],
        totalPaid: json["total_paid"],
        childStatusId: json["child_status_id"],
        loanFeeId4732: json["loan_fee_id_4732"],
        loanOverrideSysGenPenalty: json["loan_override_sys_gen_penalty"],
        loanManualPenaltyAmount: json["loan_manual_penalty_amount"],
        loanStatusId: json["loan_status_id"],
        loanTitle: json["loan_title"],
        loanDescription: json["loan_description"],
        borrowerCountry: json["borrower_country"],
        borrowerFullname: json["borrower_fullname"],
        borrowerFirstname: json["borrower_firstname"],
        borrowerLastname: json["borrower_lastname"],
        borrowerBusinessName: json["borrower_business_name"],
        borrowerUniqueNumber: json["borrower_unique_number"],
        borrowerGender: json["borrower_gender"],
        borrowerTitle: json["borrower_title"],
        borrowerMobile: json["borrower_mobile"],
        borrowerEmail: json["borrower_email"],
        borrowerDob: json["borrower_dob"],
        borrowerAddress: json["borrower_address"],
        borrowerCity: json["borrower_city"],
        borrowerProvince: json["borrower_province"],
        borrowerZipcode: json["borrower_zipcode"],
        borrowerLandline: json["borrower_landline"],
        borrowerWorkingStatus: json["borrower_working_status"],
        borrowerCreditScore: json["borrower_credit_score"],
        borrowerDescription: json["borrower_description"],
        borrowerAccessIds:
            BorrowerAccessIds.fromJson(json["borrower_access_ids"]),
        borrowerPhoto: json["borrower_photo"],
      );

  Map<String, dynamic> toJson() => {
        "loan_id": loanId,
        "loan_product_id": loanProductId,
        "borrower_id": borrowerId,
        "loan_application_id": loanApplicationId,
        "loan_disbursed_by_id": loanDisbursedById,
        "loan_principal_amount": loanPrincipalAmount,
        "loan_released_date": loanReleasedDate,
        "loan_interest_method": loanInterestMethod,
        "loan_interest_type": loanInterestType,
        "loan_interest_period": loanInterestPeriod,
        "loan_interest": loanInterest,
        "loan_duration_period": loanDurationPeriod,
        "loan_duration": loanDuration,
        "loan_payment_scheme_id": loanPaymentSchemeId,
        "loan_num_of_repayments": loanNumOfRepayments,
        "loan_decimal_places": loanDecimalPlaces,
        "loan_interest_start_date": loanInterestStartDate,
        "loan_fees_pro_rata": loanFeesProRata,
        "loan_do_not_adjust_remaining_pro_rata":
            loanDoNotAdjustRemainingProRata,
        "loan_first_repayment_pro_rata": loanFirstRepaymentProRata,
        "loan_first_repayment_date": loanFirstRepaymentDate,
        "first_repayment_amount": firstRepaymentAmount,
        "last_repayment_amount": lastRepaymentAmount,
        "loan_override_maturity_date": loanOverrideMaturityDate,
        "override_each_repayment_amount": overrideEachRepaymentAmount,
        "loan_interest_each_repayment_pro_rata":
            loanInterestEachRepaymentProRata,
        "loan_interest_schedule": loanInterestSchedule,
        "loan_principal_schedule": loanPrincipalSchedule,
        "loan_balloon_repayment_amount": loanBalloonRepaymentAmount,
        "automatic_payments": automaticPayments,
        "payment_posting_period": paymentPostingPeriod,
        "total_amount_due": totalAmountDue,
        "balance_amount": balanceAmount,
        "due_date": dueDate,
        "total_paid": totalPaid,
        "child_status_id": childStatusId,
        "loan_fee_id_4732": loanFeeId4732,
        "loan_override_sys_gen_penalty": loanOverrideSysGenPenalty,
        "loan_manual_penalty_amount": loanManualPenaltyAmount,
        "loan_status_id": loanStatusId,
        "loan_title": loanTitle,
        "loan_description": loanDescription,
        "borrower_country": borrowerCountry,
        "borrower_fullname": borrowerFullname,
        "borrower_firstname": borrowerFirstname,
        "borrower_lastname": borrowerLastname,
        "borrower_business_name": borrowerBusinessName,
        "borrower_unique_number": borrowerUniqueNumber,
        "borrower_gender": borrowerGender,
        "borrower_title": borrowerTitle,
        "borrower_mobile": borrowerMobile,
        "borrower_email": borrowerEmail,
        "borrower_dob": borrowerDob,
        "borrower_address": borrowerAddress,
        "borrower_city": borrowerCity,
        "borrower_province": borrowerProvince,
        "borrower_zipcode": borrowerZipcode,
        "borrower_landline": borrowerLandline,
        "borrower_working_status": borrowerWorkingStatus,
        "borrower_credit_score": borrowerCreditScore,
        "borrower_description": borrowerDescription,
        "borrower_access_ids": borrowerAccessIds.toJson(),
        "borrower_photo": borrowerPhoto,
      };
}

class BorrowerAccessIds {
  BorrowerAccessIds({
    this.the1,
  });

  String the1;

  factory BorrowerAccessIds.fromJson(Map<String, dynamic> json) =>
      BorrowerAccessIds(
        the1: json["1"],
      );

  Map<String, dynamic> toJson() => {
        "1": the1,
      };
}
