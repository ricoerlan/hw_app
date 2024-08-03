import 'package:equatable/equatable.dart';

class BannerModel extends Equatable {
  final int? id;
  final String? type;
  final String? title;
  final String? description;
  final String? imageUrl;
  final int? status;
  final String? statusText;
  final dynamic howToUse;
  final dynamic termsAndCondition;
  final dynamic url;
  final String? startDate;
  final String? endDate;
  final int? standingAvailable;
  final String? standingAvailableText;
  final String? createdAt;
  final String? whatsapp;
  final String? eventDate;
  final String? openGate;
  final int? reservationType;
  final String? reservationTypeText;
  final int? availabilityType;
  final String? availabilityTypeText;
  final int? isPromoted;
  final String? isPromotedText;
  final bool? isPriceUploaded;
  final int? reservationPaymentType;
  final String? reservationPaymentTypeText;
  final int? isSoldOut;
  final int? isSoldOutStanding;
  final dynamic credit;
  final dynamic sponsor;
  final String? generalAdmissionUrl;
  final dynamic inclusionList;
  final bool? useAffiliatorCode;
  final dynamic maxStandingCapacity;
  final dynamic talentDescriptionUrl;
  final bool? isUsingTicket;
  final dynamic houseRulesUrl;
  final dynamic location;
  final List<String>? tags;
  final String? potraitImage;
  final RedirectInternalSetting? redirectInternalSetting;

  const BannerModel({
    this.id,
    this.type,
    this.title,
    this.description,
    this.imageUrl,
    this.status,
    this.statusText,
    this.howToUse,
    this.termsAndCondition,
    this.url,
    this.startDate,
    this.endDate,
    this.standingAvailable,
    this.standingAvailableText,
    this.createdAt,
    this.whatsapp,
    this.eventDate,
    this.openGate,
    this.reservationType,
    this.reservationTypeText,
    this.availabilityType,
    this.availabilityTypeText,
    this.isPromoted,
    this.isPromotedText,
    this.isPriceUploaded,
    this.reservationPaymentType,
    this.reservationPaymentTypeText,
    this.isSoldOut,
    this.isSoldOutStanding,
    this.credit,
    this.sponsor,
    this.generalAdmissionUrl,
    this.inclusionList,
    this.useAffiliatorCode,
    this.maxStandingCapacity,
    this.talentDescriptionUrl,
    this.isUsingTicket,
    this.houseRulesUrl,
    this.location,
    this.tags,
    this.potraitImage,
    this.redirectInternalSetting,
  });

  BannerModel copyWith({
    int? id,
    String? type,
    String? title,
    String? description,
    String? imageUrl,
    int? status,
    String? statusText,
    dynamic howToUse,
    dynamic termsAndCondition,
    dynamic url,
    String? startDate,
    String? endDate,
    int? standingAvailable,
    String? standingAvailableText,
    String? createdAt,
    String? whatsapp,
    String? eventDate,
    String? openGate,
    int? reservationType,
    String? reservationTypeText,
    int? availabilityType,
    String? availabilityTypeText,
    int? isPromoted,
    String? isPromotedText,
    bool? isPriceUploaded,
    int? reservationPaymentType,
    String? reservationPaymentTypeText,
    int? isSoldOut,
    int? isSoldOutStanding,
    dynamic credit,
    dynamic sponsor,
    String? generalAdmissionUrl,
    dynamic inclusionList,
    bool? useAffiliatorCode,
    dynamic maxStandingCapacity,
    dynamic talentDescriptionUrl,
    bool? isUsingTicket,
    dynamic houseRulesUrl,
    dynamic location,
    List<String>? tags,
    String? potraitImage,
    RedirectInternalSetting? redirectInternalSetting,
  }) =>
      BannerModel(
        id: id ?? this.id,
        type: type ?? this.type,
        title: title ?? this.title,
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl,
        status: status ?? this.status,
        statusText: statusText ?? this.statusText,
        howToUse: howToUse ?? this.howToUse,
        termsAndCondition: termsAndCondition ?? this.termsAndCondition,
        url: url ?? this.url,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        standingAvailable: standingAvailable ?? this.standingAvailable,
        standingAvailableText:
            standingAvailableText ?? this.standingAvailableText,
        createdAt: createdAt ?? this.createdAt,
        whatsapp: whatsapp ?? this.whatsapp,
        eventDate: eventDate ?? this.eventDate,
        openGate: openGate ?? this.openGate,
        reservationType: reservationType ?? this.reservationType,
        reservationTypeText: reservationTypeText ?? this.reservationTypeText,
        availabilityType: availabilityType ?? this.availabilityType,
        availabilityTypeText: availabilityTypeText ?? this.availabilityTypeText,
        isPromoted: isPromoted ?? this.isPromoted,
        isPromotedText: isPromotedText ?? this.isPromotedText,
        isPriceUploaded: isPriceUploaded ?? this.isPriceUploaded,
        reservationPaymentType:
            reservationPaymentType ?? this.reservationPaymentType,
        reservationPaymentTypeText:
            reservationPaymentTypeText ?? this.reservationPaymentTypeText,
        isSoldOut: isSoldOut ?? this.isSoldOut,
        isSoldOutStanding: isSoldOutStanding ?? this.isSoldOutStanding,
        credit: credit ?? this.credit,
        sponsor: sponsor ?? this.sponsor,
        generalAdmissionUrl: generalAdmissionUrl ?? this.generalAdmissionUrl,
        inclusionList: inclusionList ?? this.inclusionList,
        useAffiliatorCode: useAffiliatorCode ?? this.useAffiliatorCode,
        maxStandingCapacity: maxStandingCapacity ?? this.maxStandingCapacity,
        talentDescriptionUrl: talentDescriptionUrl ?? this.talentDescriptionUrl,
        isUsingTicket: isUsingTicket ?? this.isUsingTicket,
        houseRulesUrl: houseRulesUrl ?? this.houseRulesUrl,
        location: location ?? this.location,
        tags: tags ?? this.tags,
        potraitImage: potraitImage ?? this.potraitImage,
        redirectInternalSetting:
            redirectInternalSetting ?? this.redirectInternalSetting,
      );

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
      id: json['id'],
      type: json['type'],
      title: json['title'],
      description: json['description'],
      imageUrl: json['image_url'],
      status: json['status'],
      statusText: json['status_text'],
      howToUse: json['how_to_use'],
      termsAndCondition: json['terms_and_condition'],
      url: json['url'],
      startDate: json['start_date'],
      endDate: json['end_date'],
      standingAvailable: json['standing_available'],
      standingAvailableText: json['standing_available_text'],
      createdAt: json['created_at'],
      whatsapp: json['whatsapp'],
      eventDate: json['event_date'],
      openGate: json['open_gate'],
      reservationType: json['reservation_type'],
      reservationTypeText: json['reservation_type_text'],
      availabilityType: json['availability_type'],
      availabilityTypeText: json['availability_type_text'],
      isPromoted: json['is_promoted'],
      isPromotedText: json['is_promoted_text'],
      isPriceUploaded: json['is_price_uploaded'],
      reservationPaymentType: json['reservation_payment_type'],
      reservationPaymentTypeText: json['reservation_payment_type_text'],
      isSoldOut: json['is_sold_out'],
      isSoldOutStanding: json['is_sold_out_standing'],
      credit: json['credit'],
      sponsor: json['sponsor'],
      generalAdmissionUrl: json['general_admission_url'],
      inclusionList: json['inclusion_list'],
      useAffiliatorCode: json['use_affiliator_code'],
      maxStandingCapacity: json['max_standing_capacity'],
      talentDescriptionUrl: json['talent_description_url'],
      isUsingTicket: json['is_using_ticket'],
      houseRulesUrl: json['house_rules_url'],
      location: json['location'],
      tags: json['tags'].cast<String>(),
      potraitImage: json['potrait_image'],
      redirectInternalSetting: json['redirect_internal_setting'] != null
          ? RedirectInternalSetting.fromJson(json['redirect_internal_setting'])
          : null);

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'title': title,
        'description': description,
        'image_url': imageUrl,
        'status': status,
        'status_text': statusText,
        'how_to_use': howToUse,
        'terms_and_condition': termsAndCondition,
        'url': url,
        'start_date': startDate,
        'end_date': endDate,
        'standing_available': standingAvailable,
        'standing_available_text': standingAvailableText,
        'created_at': createdAt,
        'whatsapp': whatsapp,
        'event_date': eventDate,
        'open_gate': openGate,
        'reservation_type': reservationType,
        'reservation_type_text': reservationTypeText,
        'availability_type': availabilityType,
        'availability_type_text': availabilityTypeText,
        'is_promoted': isPromoted,
        'is_promoted_text': isPromotedText,
        'is_price_uploaded': isPriceUploaded,
        'reservation_payment_type': reservationPaymentType,
        'reservation_payment_type_text': reservationPaymentTypeText,
        'is_sold_out': isSoldOut,
        'is_sold_out_standing': isSoldOutStanding,
        'credit': credit,
        'sponsor': sponsor,
        'general_admission_url': generalAdmissionUrl,
        'inclusion_list': inclusionList,
        'use_affiliator_code': useAffiliatorCode,
        'max_standing_capacity': maxStandingCapacity,
        'talent_description_url': talentDescriptionUrl,
        'is_using_ticket': isUsingTicket,
        'house_rules_url': houseRulesUrl,
        'location': location,
        'tags': tags,
        'potrait_image': potraitImage,
        'redirect_internal_setting': redirectInternalSetting?.toJson()
      };

  @override
  List<Object?> get props => [
        id,
        type,
        title,
      ];
}

class RedirectInternalSetting extends Equatable {
  final String? redirectInternalSettingEnum;
  final String? enumDescription;
  final String? additionalParam;

  const RedirectInternalSetting({
    this.redirectInternalSettingEnum,
    this.enumDescription,
    this.additionalParam,
  });

  RedirectInternalSetting copyWith({
    String? redirectInternalSettingEnum,
    String? enumDescription,
    String? additionalParam,
  }) =>
      RedirectInternalSetting(
        redirectInternalSettingEnum:
            redirectInternalSettingEnum ?? this.redirectInternalSettingEnum,
        enumDescription: enumDescription ?? this.enumDescription,
        additionalParam: additionalParam ?? this.additionalParam,
      );

  factory RedirectInternalSetting.fromJson(Map<String, dynamic> json) =>
      RedirectInternalSetting(
          redirectInternalSettingEnum: json['redirect_internal_setting_enum'],
          enumDescription: json['enum_description'],
          additionalParam: json['additional_param']);

  Map<String, dynamic> toJson() => {
        'redirect_internal_setting_enum': redirectInternalSettingEnum,
        'enum_description': enumDescription,
        'additional_param': additionalParam
      };

  @override
  List<Object?> get props =>
      [redirectInternalSettingEnum, enumDescription, additionalParam];
}
