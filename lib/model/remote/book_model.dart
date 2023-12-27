import 'dart:convert';

class BookModel {
    final String? kind;
    final int? totalItems;
    final List<Item>? items;

    BookModel({
        this.kind,
        this.totalItems,
        this.items,
    });

    BookModel copyWith({
        String? kind,
        int? totalItems,
        List<Item>? items,
    }) => 
        BookModel(
            kind: kind ?? this.kind,
            totalItems: totalItems ?? this.totalItems,
            items: items ?? this.items,
        );

    factory BookModel.fromRawJson(String str) => BookModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        kind: json["kind"],
        totalItems: json["totalItems"],
        items: json["items"] == null ? [] : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "totalItems": totalItems,
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
    };
}

class Item {
    final Kind? kind;
    final String? id;
    final String? etag;
    final String? selfLink;
    final VolumeInfo? volumeInfo;
    final SaleInfo? saleInfo;
    final AccessInfo? accessInfo;
    final SearchInfo? searchInfo;

    Item({
        this.kind,
        this.id,
        this.etag,
        this.selfLink,
        this.volumeInfo,
        this.saleInfo,
        this.accessInfo,
        this.searchInfo,
    });

    Item copyWith({
        Kind? kind,
        String? id,
        String? etag,
        String? selfLink,
        VolumeInfo? volumeInfo,
        SaleInfo? saleInfo,
        AccessInfo? accessInfo,
        SearchInfo? searchInfo,
    }) => 
        Item(
            kind: kind ?? this.kind,
            id: id ?? this.id,
            etag: etag ?? this.etag,
            selfLink: selfLink ?? this.selfLink,
            volumeInfo: volumeInfo ?? this.volumeInfo,
            saleInfo: saleInfo ?? this.saleInfo,
            accessInfo: accessInfo ?? this.accessInfo,
            searchInfo: searchInfo ?? this.searchInfo,
        );

    factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        kind: kindValues.map[json["kind"]],
        id: json["id"],
        etag: json["etag"],
        selfLink: json["selfLink"],
        volumeInfo: json["volumeInfo"] == null ? null : VolumeInfo.fromJson(json["volumeInfo"]),
        saleInfo: json["saleInfo"] == null ? null : SaleInfo.fromJson(json["saleInfo"]),
        accessInfo: json["accessInfo"] == null ? null : AccessInfo.fromJson(json["accessInfo"]),
        searchInfo: json["searchInfo"] == null ? null : SearchInfo.fromJson(json["searchInfo"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kindValues.reverse[kind],
        "id": id,
        "etag": etag,
        "selfLink": selfLink,
        "volumeInfo": volumeInfo?.toJson(),
        "saleInfo": saleInfo?.toJson(),
        "accessInfo": accessInfo?.toJson(),
        "searchInfo": searchInfo?.toJson(),
    };
}

class AccessInfo {
    final Country? country;
    final Viewability? viewability;
    final bool? embeddable;
    final bool? publicDomain;
    final TextToSpeechPermission? textToSpeechPermission;
    final Epub? epub;
    final Epub? pdf;
    final String? webReaderLink;
    final AccessViewStatus? accessViewStatus;
    final bool? quoteSharingAllowed;

    AccessInfo({
        this.country,
        this.viewability,
        this.embeddable,
        this.publicDomain,
        this.textToSpeechPermission,
        this.epub,
        this.pdf,
        this.webReaderLink,
        this.accessViewStatus,
        this.quoteSharingAllowed,
    });

    AccessInfo copyWith({
        Country? country,
        Viewability? viewability,
        bool? embeddable,
        bool? publicDomain,
        TextToSpeechPermission? textToSpeechPermission,
        Epub? epub,
        Epub? pdf,
        String? webReaderLink,
        AccessViewStatus? accessViewStatus,
        bool? quoteSharingAllowed,
    }) => 
        AccessInfo(
            country: country ?? this.country,
            viewability: viewability ?? this.viewability,
            embeddable: embeddable ?? this.embeddable,
            publicDomain: publicDomain ?? this.publicDomain,
            textToSpeechPermission: textToSpeechPermission ?? this.textToSpeechPermission,
            epub: epub ?? this.epub,
            pdf: pdf ?? this.pdf,
            webReaderLink: webReaderLink ?? this.webReaderLink,
            accessViewStatus: accessViewStatus ?? this.accessViewStatus,
            quoteSharingAllowed: quoteSharingAllowed ?? this.quoteSharingAllowed,
        );

    factory AccessInfo.fromRawJson(String str) => AccessInfo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
        country: countryValues.map[json["country"]],
        viewability: viewabilityValues.map[json["viewability"]],
        embeddable: json["embeddable"],
        publicDomain: json["publicDomain"],
        textToSpeechPermission: textToSpeechPermissionValues.map[json["textToSpeechPermission"]],
        epub: json["epub"] == null ? null : Epub.fromJson(json["epub"]),
        pdf: json["pdf"] == null ? null : Epub.fromJson(json["pdf"]),
        webReaderLink: json["webReaderLink"],
        accessViewStatus: accessViewStatusValues.map[json["accessViewStatus"]],
        quoteSharingAllowed: json["quoteSharingAllowed"],
    );

    Map<String, dynamic> toJson() => {
        "country": countryValues.reverse[country],
        "viewability": viewabilityValues.reverse[viewability],
        "embeddable": embeddable,
        "publicDomain": publicDomain,
        "textToSpeechPermission": textToSpeechPermissionValues.reverse[textToSpeechPermission],
        "epub": epub?.toJson(),
        "pdf": pdf?.toJson(),
        "webReaderLink": webReaderLink,
        "accessViewStatus": accessViewStatusValues.reverse[accessViewStatus],
        "quoteSharingAllowed": quoteSharingAllowed,
    };
}

enum AccessViewStatus {
    NONE,
    SAMPLE
}

final accessViewStatusValues = EnumValues({
    "NONE": AccessViewStatus.NONE,
    "SAMPLE": AccessViewStatus.SAMPLE
});

enum Country {
    US
}

final countryValues = EnumValues({
    "US": Country.US
});

class Epub {
    final bool? isAvailable;
    final String? acsTokenLink;

    Epub({
        this.isAvailable,
        this.acsTokenLink,
    });

    Epub copyWith({
        bool? isAvailable,
        String? acsTokenLink,
    }) => 
        Epub(
            isAvailable: isAvailable ?? this.isAvailable,
            acsTokenLink: acsTokenLink ?? this.acsTokenLink,
        );

    factory Epub.fromRawJson(String str) => Epub.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Epub.fromJson(Map<String, dynamic> json) => Epub(
        isAvailable: json["isAvailable"],
        acsTokenLink: json["acsTokenLink"],
    );

    Map<String, dynamic> toJson() => {
        "isAvailable": isAvailable,
        "acsTokenLink": acsTokenLink,
    };
}

enum TextToSpeechPermission {
    ALLOWED,
    ALLOWED_FOR_ACCESSIBILITY
}

final textToSpeechPermissionValues = EnumValues({
    "ALLOWED": TextToSpeechPermission.ALLOWED,
    "ALLOWED_FOR_ACCESSIBILITY": TextToSpeechPermission.ALLOWED_FOR_ACCESSIBILITY
});

enum Viewability {
    ALL_PAGES,
    NO_PAGES,
    PARTIAL
}

final viewabilityValues = EnumValues({
    "ALL_PAGES": Viewability.ALL_PAGES,
    "NO_PAGES": Viewability.NO_PAGES,
    "PARTIAL": Viewability.PARTIAL
});

enum Kind {
    BOOKS_VOLUME
}

final kindValues = EnumValues({
    "books#volume": Kind.BOOKS_VOLUME
});

class SaleInfo {
    final Country? country;
    final Saleability? saleability;
    final bool? isEbook;
    final SaleInfoListPrice? listPrice;
    final SaleInfoListPrice? retailPrice;
    final String? buyLink;
    final List<Offer>? offers;

    SaleInfo({
        this.country,
        this.saleability,
        this.isEbook,
        this.listPrice,
        this.retailPrice,
        this.buyLink,
        this.offers,
    });

    SaleInfo copyWith({
        Country? country,
        Saleability? saleability,
        bool? isEbook,
        SaleInfoListPrice? listPrice,
        SaleInfoListPrice? retailPrice,
        String? buyLink,
        List<Offer>? offers,
    }) => 
        SaleInfo(
            country: country ?? this.country,
            saleability: saleability ?? this.saleability,
            isEbook: isEbook ?? this.isEbook,
            listPrice: listPrice ?? this.listPrice,
            retailPrice: retailPrice ?? this.retailPrice,
            buyLink: buyLink ?? this.buyLink,
            offers: offers ?? this.offers,
        );

    factory SaleInfo.fromRawJson(String str) => SaleInfo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        country: countryValues.map[json["country"]],
        saleability: saleabilityValues.map[json["saleability"]],
        isEbook: json["isEbook"],
        listPrice: json["listPrice"] == null ? null : SaleInfoListPrice.fromJson(json["listPrice"]),
        retailPrice: json["retailPrice"] == null ? null : SaleInfoListPrice.fromJson(json["retailPrice"]),
        buyLink: json["buyLink"],
        offers: json["offers"] == null ? [] : List<Offer>.from(json["offers"].map((x) => Offer.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "country": countryValues.reverse[country],
        "saleability": saleabilityValues.reverse[saleability],
        "isEbook": isEbook,
        "listPrice": listPrice?.toJson(),
        "retailPrice": retailPrice?.toJson(),
        "buyLink": buyLink,
        "offers": offers == null ? [] : List<dynamic>.from(offers!.map((x) => x.toJson())),
    };
}

class SaleInfoListPrice {
    final double? amount;
    final CurrencyCode? currencyCode;

    SaleInfoListPrice({
        this.amount,
        this.currencyCode,
    });

    SaleInfoListPrice copyWith({
        double? amount,
        CurrencyCode? currencyCode,
    }) => 
        SaleInfoListPrice(
            amount: amount ?? this.amount,
            currencyCode: currencyCode ?? this.currencyCode,
        );

    factory SaleInfoListPrice.fromRawJson(String str) => SaleInfoListPrice.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SaleInfoListPrice.fromJson(Map<String, dynamic> json) => SaleInfoListPrice(
        amount: json["amount"]?.toDouble(),
        currencyCode: currencyCodeValues.map[json["currencyCode"]],
    );

    Map<String, dynamic> toJson() => {
        "amount": amount,
        "currencyCode": currencyCodeValues.reverse[currencyCode],
    };
}

enum CurrencyCode {
    USD
}

final currencyCodeValues = EnumValues({
    "USD": CurrencyCode.USD
});

class Offer {
    final int? finskyOfferType;
    final OfferListPrice? listPrice;
    final OfferListPrice? retailPrice;
    final bool? giftable;
    final RentalDuration? rentalDuration;

    Offer({
        this.finskyOfferType,
        this.listPrice,
        this.retailPrice,
        this.giftable,
        this.rentalDuration,
    });

    Offer copyWith({
        int? finskyOfferType,
        OfferListPrice? listPrice,
        OfferListPrice? retailPrice,
        bool? giftable,
        RentalDuration? rentalDuration,
    }) => 
        Offer(
            finskyOfferType: finskyOfferType ?? this.finskyOfferType,
            listPrice: listPrice ?? this.listPrice,
            retailPrice: retailPrice ?? this.retailPrice,
            giftable: giftable ?? this.giftable,
            rentalDuration: rentalDuration ?? this.rentalDuration,
        );

    factory Offer.fromRawJson(String str) => Offer.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        finskyOfferType: json["finskyOfferType"],
        listPrice: json["listPrice"] == null ? null : OfferListPrice.fromJson(json["listPrice"]),
        retailPrice: json["retailPrice"] == null ? null : OfferListPrice.fromJson(json["retailPrice"]),
        giftable: json["giftable"],
        rentalDuration: json["rentalDuration"] == null ? null : RentalDuration.fromJson(json["rentalDuration"]),
    );

    Map<String, dynamic> toJson() => {
        "finskyOfferType": finskyOfferType,
        "listPrice": listPrice?.toJson(),
        "retailPrice": retailPrice?.toJson(),
        "giftable": giftable,
        "rentalDuration": rentalDuration?.toJson(),
    };
}

class OfferListPrice {
    final int? amountInMicros;
    final CurrencyCode? currencyCode;

    OfferListPrice({
        this.amountInMicros,
        this.currencyCode,
    });

    OfferListPrice copyWith({
        int? amountInMicros,
        CurrencyCode? currencyCode,
    }) => 
        OfferListPrice(
            amountInMicros: amountInMicros ?? this.amountInMicros,
            currencyCode: currencyCode ?? this.currencyCode,
        );

    factory OfferListPrice.fromRawJson(String str) => OfferListPrice.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory OfferListPrice.fromJson(Map<String, dynamic> json) => OfferListPrice(
        amountInMicros: json["amountInMicros"],
        currencyCode: currencyCodeValues.map[json["currencyCode"]],
    );

    Map<String, dynamic> toJson() => {
        "amountInMicros": amountInMicros,
        "currencyCode": currencyCodeValues.reverse[currencyCode],
    };
}

class RentalDuration {
    final String? unit;
    final int? count;

    RentalDuration({
        this.unit,
        this.count,
    });

    RentalDuration copyWith({
        String? unit,
        int? count,
    }) => 
        RentalDuration(
            unit: unit ?? this.unit,
            count: count ?? this.count,
        );

    factory RentalDuration.fromRawJson(String str) => RentalDuration.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory RentalDuration.fromJson(Map<String, dynamic> json) => RentalDuration(
        unit: json["unit"],
        count: json["count"],
    );

    Map<String, dynamic> toJson() => {
        "unit": unit,
        "count": count,
    };
}

enum Saleability {
    FOR_SALE,
    FOR_SALE_AND_RENTAL,
    NOT_FOR_SALE
}

final saleabilityValues = EnumValues({
    "FOR_SALE": Saleability.FOR_SALE,
    "FOR_SALE_AND_RENTAL": Saleability.FOR_SALE_AND_RENTAL,
    "NOT_FOR_SALE": Saleability.NOT_FOR_SALE
});

class SearchInfo {
    final String? textSnippet;

    SearchInfo({
        this.textSnippet,
    });

    SearchInfo copyWith({
        String? textSnippet,
    }) => 
        SearchInfo(
            textSnippet: textSnippet ?? this.textSnippet,
        );

    factory SearchInfo.fromRawJson(String str) => SearchInfo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SearchInfo.fromJson(Map<String, dynamic> json) => SearchInfo(
        textSnippet: json["textSnippet"],
    );

    Map<String, dynamic> toJson() => {
        "textSnippet": textSnippet,
    };
}

class VolumeInfo {
    final String? title;
    final String? subtitle;
    final List<String>? authors;
    final String? publisher;
    final String? publishedDate;
    final String? description;
    final List<IndustryIdentifier>? industryIdentifiers;
    final ReadingModes? readingModes;
    final int? pageCount;
    final PrintType? printType;
    final List<String>? categories;
    final MaturityRating? maturityRating;
    final bool? allowAnonLogging;
    final String? contentVersion;
    final PanelizationSummary? panelizationSummary;
    final ImageLinks? imageLinks;
    final Language? language;
    final String? previewLink;
    final String? infoLink;
    final String? canonicalVolumeLink;
    final double? averageRating;
    final int? ratingsCount;

    VolumeInfo({
        this.title,
        this.subtitle,
        this.authors,
        this.publisher,
        this.publishedDate,
        this.description,
        this.industryIdentifiers,
        this.readingModes,
        this.pageCount,
        this.printType,
        this.categories,
        this.maturityRating,
        this.allowAnonLogging,
        this.contentVersion,
        this.panelizationSummary,
        this.imageLinks,
        this.language,
        this.previewLink,
        this.infoLink,
        this.canonicalVolumeLink,
        this.averageRating,
        this.ratingsCount,
    });

    VolumeInfo copyWith({
        String? title,
        String? subtitle,
        List<String>? authors,
        String? publisher,
        String? publishedDate,
        String? description,
        List<IndustryIdentifier>? industryIdentifiers,
        ReadingModes? readingModes,
        int? pageCount,
        PrintType? printType,
        List<String>? categories,
        MaturityRating? maturityRating,
        bool? allowAnonLogging,
        String? contentVersion,
        PanelizationSummary? panelizationSummary,
        ImageLinks? imageLinks,
        Language? language,
        String? previewLink,
        String? infoLink,
        String? canonicalVolumeLink,
        double? averageRating,
        int? ratingsCount,
    }) => 
        VolumeInfo(
            title: title ?? this.title,
            subtitle: subtitle ?? this.subtitle,
            authors: authors ?? this.authors,
            publisher: publisher ?? this.publisher,
            publishedDate: publishedDate ?? this.publishedDate,
            description: description ?? this.description,
            industryIdentifiers: industryIdentifiers ?? this.industryIdentifiers,
            readingModes: readingModes ?? this.readingModes,
            pageCount: pageCount ?? this.pageCount,
            printType: printType ?? this.printType,
            categories: categories ?? this.categories,
            maturityRating: maturityRating ?? this.maturityRating,
            allowAnonLogging: allowAnonLogging ?? this.allowAnonLogging,
            contentVersion: contentVersion ?? this.contentVersion,
            panelizationSummary: panelizationSummary ?? this.panelizationSummary,
            imageLinks: imageLinks ?? this.imageLinks,
            language: language ?? this.language,
            previewLink: previewLink ?? this.previewLink,
            infoLink: infoLink ?? this.infoLink,
            canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
            averageRating: averageRating ?? this.averageRating,
            ratingsCount: ratingsCount ?? this.ratingsCount,
        );

    factory VolumeInfo.fromRawJson(String str) => VolumeInfo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json["title"],
        subtitle: json["subtitle"],
        authors: json["authors"] == null ? [] : List<String>.from(json["authors"].map((x) => x)),
        publisher: json["publisher"],
        publishedDate: json["publishedDate"],
        description: json["description"],
        industryIdentifiers: json["industryIdentifiers"] == null ? [] : List<IndustryIdentifier>.from(json["industryIdentifiers"].map((x) => IndustryIdentifier.fromJson(x))),
        readingModes: json["readingModes"] == null ? null : ReadingModes.fromJson(json["readingModes"]),
        pageCount: json["pageCount"],
        printType: printTypeValues.map[json["printType"]],
        categories: json["categories"] == null ? [] : List<String>.from(json["categories"].map((x) => x)),
        maturityRating: maturityRatingValues.map[json["maturityRating"]],
        allowAnonLogging: json["allowAnonLogging"],
        contentVersion: json["contentVersion"],
        panelizationSummary: json["panelizationSummary"] == null ? null : PanelizationSummary.fromJson(json["panelizationSummary"]),
        imageLinks: json["imageLinks"] == null ? null : ImageLinks.fromJson(json["imageLinks"]),
        language: languageValues.map[json["language"]],
        previewLink: json["previewLink"],
        infoLink: json["infoLink"],
        canonicalVolumeLink: json["canonicalVolumeLink"],
        averageRating: json["averageRating"]?.toDouble(),
        ratingsCount: json["ratingsCount"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "authors": authors == null ? [] : List<dynamic>.from(authors!.map((x) => x)),
        "publisher": publisher,
        "publishedDate": publishedDate,
        "description": description,
        "industryIdentifiers": industryIdentifiers == null ? [] : List<dynamic>.from(industryIdentifiers!.map((x) => x.toJson())),
        "readingModes": readingModes?.toJson(),
        "pageCount": pageCount,
        "printType": printTypeValues.reverse[printType],
        "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x)),
        "maturityRating": maturityRatingValues.reverse[maturityRating],
        "allowAnonLogging": allowAnonLogging,
        "contentVersion": contentVersion,
        "panelizationSummary": panelizationSummary?.toJson(),
        "imageLinks": imageLinks?.toJson(),
        "language": languageValues.reverse[language],
        "previewLink": previewLink,
        "infoLink": infoLink,
        "canonicalVolumeLink": canonicalVolumeLink,
        "averageRating": averageRating,
        "ratingsCount": ratingsCount,
    };
}

class ImageLinks {
    final String? smallThumbnail;
    final String? thumbnail;

    ImageLinks({
        this.smallThumbnail,
        this.thumbnail,
    });

    ImageLinks copyWith({
        String? smallThumbnail,
        String? thumbnail,
    }) => 
        ImageLinks(
            smallThumbnail: smallThumbnail ?? this.smallThumbnail,
            thumbnail: thumbnail ?? this.thumbnail,
        );

    factory ImageLinks.fromRawJson(String str) => ImageLinks.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
        smallThumbnail: json["smallThumbnail"],
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toJson() => {
        "smallThumbnail": smallThumbnail,
        "thumbnail": thumbnail,
    };
}

class IndustryIdentifier {
    final Type? type;
    final String? identifier;

    IndustryIdentifier({
        this.type,
        this.identifier,
    });

    IndustryIdentifier copyWith({
        Type? type,
        String? identifier,
    }) => 
        IndustryIdentifier(
            type: type ?? this.type,
            identifier: identifier ?? this.identifier,
        );

    factory IndustryIdentifier.fromRawJson(String str) => IndustryIdentifier.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory IndustryIdentifier.fromJson(Map<String, dynamic> json) => IndustryIdentifier(
        type: typeValues.map[json["type"]],
        identifier: json["identifier"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "identifier": identifier,
    };
}

enum Type {
    ISBN_10,
    ISBN_13
}

final typeValues = EnumValues({
    "ISBN_10": Type.ISBN_10,
    "ISBN_13": Type.ISBN_13
});

enum Language {
    EN
}

final languageValues = EnumValues({
    "en": Language.EN
});

enum MaturityRating {
    NOT_MATURE
}

final maturityRatingValues = EnumValues({
    "NOT_MATURE": MaturityRating.NOT_MATURE
});

class PanelizationSummary {
    final bool? containsEpubBubbles;
    final bool? containsImageBubbles;

    PanelizationSummary({
        this.containsEpubBubbles,
        this.containsImageBubbles,
    });

    PanelizationSummary copyWith({
        bool? containsEpubBubbles,
        bool? containsImageBubbles,
    }) => 
        PanelizationSummary(
            containsEpubBubbles: containsEpubBubbles ?? this.containsEpubBubbles,
            containsImageBubbles: containsImageBubbles ?? this.containsImageBubbles,
        );

    factory PanelizationSummary.fromRawJson(String str) => PanelizationSummary.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PanelizationSummary.fromJson(Map<String, dynamic> json) => PanelizationSummary(
        containsEpubBubbles: json["containsEpubBubbles"],
        containsImageBubbles: json["containsImageBubbles"],
    );

    Map<String, dynamic> toJson() => {
        "containsEpubBubbles": containsEpubBubbles,
        "containsImageBubbles": containsImageBubbles,
    };
}

enum PrintType {
    BOOK,
    MAGAZINE
}

final printTypeValues = EnumValues({
    "BOOK": PrintType.BOOK,
    "MAGAZINE": PrintType.MAGAZINE
});

class ReadingModes {
    final bool? text;
    final bool? image;

    ReadingModes({
        this.text,
        this.image,
    });

    ReadingModes copyWith({
        bool? text,
        bool? image,
    }) => 
        ReadingModes(
            text: text ?? this.text,
            image: image ?? this.image,
        );

    factory ReadingModes.fromRawJson(String str) => ReadingModes.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ReadingModes.fromJson(Map<String, dynamic> json) => ReadingModes(
        text: json["text"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "image": image,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
