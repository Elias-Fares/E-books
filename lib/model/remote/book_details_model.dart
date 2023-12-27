import 'dart:convert';

class BookDetailsModel {
    final String? kind;
    final String? id;
    final String? etag;
    final String? selfLink;
    final VolumeInfo? volumeInfo;
    final SaleInfo? saleInfo;
    final AccessInfo? accessInfo;

    BookDetailsModel({
        this.kind,
        this.id,
        this.etag,
        this.selfLink,
        this.volumeInfo,
        this.saleInfo,
        this.accessInfo,
    });

    BookDetailsModel copyWith({
        String? kind,
        String? id,
        String? etag,
        String? selfLink,
        VolumeInfo? volumeInfo,
        SaleInfo? saleInfo,
        AccessInfo? accessInfo,
    }) => 
        BookDetailsModel(
            kind: kind ?? this.kind,
            id: id ?? this.id,
            etag: etag ?? this.etag,
            selfLink: selfLink ?? this.selfLink,
            volumeInfo: volumeInfo ?? this.volumeInfo,
            saleInfo: saleInfo ?? this.saleInfo,
            accessInfo: accessInfo ?? this.accessInfo,
        );

    factory BookDetailsModel.fromRawJson(String str) => BookDetailsModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory BookDetailsModel.fromJson(Map<String, dynamic> json) => BookDetailsModel(
        kind: json["kind"],
        id: json["id"],
        etag: json["etag"],
        selfLink: json["selfLink"],
        volumeInfo: json["volumeInfo"] == null ? null : VolumeInfo.fromJson(json["volumeInfo"]),
        saleInfo: json["saleInfo"] == null ? null : SaleInfo.fromJson(json["saleInfo"]),
        accessInfo: json["accessInfo"] == null ? null : AccessInfo.fromJson(json["accessInfo"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "etag": etag,
        "selfLink": selfLink,
        "volumeInfo": volumeInfo?.toJson(),
        "saleInfo": saleInfo?.toJson(),
        "accessInfo": accessInfo?.toJson(),
    };
}

class AccessInfo {
    final String? country;
    final String? viewability;
    final bool? embeddable;
    final bool? publicDomain;
    final String? textToSpeechPermission;
    final Epub? epub;
    final Pdf? pdf;
    final String? webReaderLink;
    final String? accessViewStatus;
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
        String? country,
        String? viewability,
        bool? embeddable,
        bool? publicDomain,
        String? textToSpeechPermission,
        Epub? epub,
        Pdf? pdf,
        String? webReaderLink,
        String? accessViewStatus,
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
        country: json["country"],
        viewability: json["viewability"],
        embeddable: json["embeddable"],
        publicDomain: json["publicDomain"],
        textToSpeechPermission: json["textToSpeechPermission"],
        epub: json["epub"] == null ? null : Epub.fromJson(json["epub"]),
        pdf: json["pdf"] == null ? null : Pdf.fromJson(json["pdf"]),
        webReaderLink: json["webReaderLink"],
        accessViewStatus: json["accessViewStatus"],
        quoteSharingAllowed: json["quoteSharingAllowed"],
    );

    Map<String, dynamic> toJson() => {
        "country": country,
        "viewability": viewability,
        "embeddable": embeddable,
        "publicDomain": publicDomain,
        "textToSpeechPermission": textToSpeechPermission,
        "epub": epub?.toJson(),
        "pdf": pdf?.toJson(),
        "webReaderLink": webReaderLink,
        "accessViewStatus": accessViewStatus,
        "quoteSharingAllowed": quoteSharingAllowed,
    };
}

class Epub {
    final bool? isAvailable;

    Epub({
        this.isAvailable,
    });

    Epub copyWith({
        bool? isAvailable,
    }) => 
        Epub(
            isAvailable: isAvailable ?? this.isAvailable,
        );

    factory Epub.fromRawJson(String str) => Epub.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Epub.fromJson(Map<String, dynamic> json) => Epub(
        isAvailable: json["isAvailable"],
    );

    Map<String, dynamic> toJson() => {
        "isAvailable": isAvailable,
    };
}

class Pdf {
    final bool? isAvailable;
    final String? acsTokenLink;

    Pdf({
        this.isAvailable,
        this.acsTokenLink,
    });

    Pdf copyWith({
        bool? isAvailable,
        String? acsTokenLink,
    }) => 
        Pdf(
            isAvailable: isAvailable ?? this.isAvailable,
            acsTokenLink: acsTokenLink ?? this.acsTokenLink,
        );

    factory Pdf.fromRawJson(String str) => Pdf.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
        isAvailable: json["isAvailable"],
        acsTokenLink: json["acsTokenLink"],
    );

    Map<String, dynamic> toJson() => {
        "isAvailable": isAvailable,
        "acsTokenLink": acsTokenLink,
    };
}

class SaleInfo {
    final String? country;
    final String? saleability;
    final bool? isEbook;

    SaleInfo({
        this.country,
        this.saleability,
        this.isEbook,
    });

    SaleInfo copyWith({
        String? country,
        String? saleability,
        bool? isEbook,
    }) => 
        SaleInfo(
            country: country ?? this.country,
            saleability: saleability ?? this.saleability,
            isEbook: isEbook ?? this.isEbook,
        );

    factory SaleInfo.fromRawJson(String str) => SaleInfo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        country: json["country"],
        saleability: json["saleability"],
        isEbook: json["isEbook"],
    );

    Map<String, dynamic> toJson() => {
        "country": country,
        "saleability": saleability,
        "isEbook": isEbook,
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
    final int? printedPageCount;
    final Dimensions? dimensions;
    final String? printType;
    final List<String>? categories;
    final String? maturityRating;
    final bool? allowAnonLogging;
    final String? contentVersion;
    final PanelizationSummary? panelizationSummary;
    final ImageLinks? imageLinks;
    final String? language;
    final String? previewLink;
    final String? infoLink;
    final String? canonicalVolumeLink;

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
        this.printedPageCount,
        this.dimensions,
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
        int? printedPageCount,
        Dimensions? dimensions,
        String? printType,
        List<String>? categories,
        String? maturityRating,
        bool? allowAnonLogging,
        String? contentVersion,
        PanelizationSummary? panelizationSummary,
        ImageLinks? imageLinks,
        String? language,
        String? previewLink,
        String? infoLink,
        String? canonicalVolumeLink,
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
            printedPageCount: printedPageCount ?? this.printedPageCount,
            dimensions: dimensions ?? this.dimensions,
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
        );

    factory VolumeInfo.fromRawJson(String str) => VolumeInfo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json["title"],
        subtitle: json["subtitle"],
        authors: json["authors"] == null ? [] : List<String>.from(json["authors"]!.map((x) => x)),
        publisher: json["publisher"],
        publishedDate: json["publishedDate"],
        description: json["description"],
        industryIdentifiers: json["industryIdentifiers"] == null ? [] : List<IndustryIdentifier>.from(json["industryIdentifiers"]!.map((x) => IndustryIdentifier.fromJson(x))),
        readingModes: json["readingModes"] == null ? null : ReadingModes.fromJson(json["readingModes"]),
        pageCount: json["pageCount"],
        printedPageCount: json["printedPageCount"],
        dimensions: json["dimensions"] == null ? null : Dimensions.fromJson(json["dimensions"]),
        printType: json["printType"],
        categories: json["categories"] == null ? [] : List<String>.from(json["categories"]!.map((x) => x)),
        maturityRating: json["maturityRating"],
        allowAnonLogging: json["allowAnonLogging"],
        contentVersion: json["contentVersion"],
        panelizationSummary: json["panelizationSummary"] == null ? null : PanelizationSummary.fromJson(json["panelizationSummary"]),
        imageLinks: json["imageLinks"] == null ? null : ImageLinks.fromJson(json["imageLinks"]),
        language: json["language"],
        previewLink: json["previewLink"],
        infoLink: json["infoLink"],
        canonicalVolumeLink: json["canonicalVolumeLink"],
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
        "printedPageCount": printedPageCount,
        "dimensions": dimensions?.toJson(),
        "printType": printType,
        "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x)),
        "maturityRating": maturityRating,
        "allowAnonLogging": allowAnonLogging,
        "contentVersion": contentVersion,
        "panelizationSummary": panelizationSummary?.toJson(),
        "imageLinks": imageLinks?.toJson(),
        "language": language,
        "previewLink": previewLink,
        "infoLink": infoLink,
        "canonicalVolumeLink": canonicalVolumeLink,
    };
}

class Dimensions {
    final String? height;
    final String? width;
    final String? thickness;

    Dimensions({
        this.height,
        this.width,
        this.thickness,
    });

    Dimensions copyWith({
        String? height,
        String? width,
        String? thickness,
    }) => 
        Dimensions(
            height: height ?? this.height,
            width: width ?? this.width,
            thickness: thickness ?? this.thickness,
        );

    factory Dimensions.fromRawJson(String str) => Dimensions.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        height: json["height"],
        width: json["width"],
        thickness: json["thickness"],
    );

    Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
        "thickness": thickness,
    };
}

class ImageLinks {
    final String? smallThumbnail;
    final String? thumbnail;
    final String? small;
    final String? medium;
    final String? large;

    ImageLinks({
        this.smallThumbnail,
        this.thumbnail,
        this.small,
        this.medium,
        this.large,
    });

    ImageLinks copyWith({
        String? smallThumbnail,
        String? thumbnail,
        String? small,
        String? medium,
        String? large,
    }) => 
        ImageLinks(
            smallThumbnail: smallThumbnail ?? this.smallThumbnail,
            thumbnail: thumbnail ?? this.thumbnail,
            small: small ?? this.small,
            medium: medium ?? this.medium,
            large: large ?? this.large,
        );

    factory ImageLinks.fromRawJson(String str) => ImageLinks.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
        smallThumbnail: json["smallThumbnail"],
        thumbnail: json["thumbnail"],
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
    );

    Map<String, dynamic> toJson() => {
        "smallThumbnail": smallThumbnail,
        "thumbnail": thumbnail,
        "small": small,
        "medium": medium,
        "large": large,
    };
}

class IndustryIdentifier {
    final String? type;
    final String? identifier;

    IndustryIdentifier({
        this.type,
        this.identifier,
    });

    IndustryIdentifier copyWith({
        String? type,
        String? identifier,
    }) => 
        IndustryIdentifier(
            type: type ?? this.type,
            identifier: identifier ?? this.identifier,
        );

    factory IndustryIdentifier.fromRawJson(String str) => IndustryIdentifier.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory IndustryIdentifier.fromJson(Map<String, dynamic> json) => IndustryIdentifier(
        type: json["type"],
        identifier: json["identifier"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "identifier": identifier,
    };
}

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
