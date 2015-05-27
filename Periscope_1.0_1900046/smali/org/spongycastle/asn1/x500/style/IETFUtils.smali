.class public Lorg/spongycastle/asn1/x500/style/IETFUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isHexDigit(C)Z
    .locals 1

    .line 113
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 34
    const/4 v6, 0x0

    .line 38
    const/4 v0, 0x0

    aget-char v0, v2, v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    .line 40
    const/4 v0, 0x1

    aget-char v0, v2, v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 42
    const/4 v6, 0x2

    .line 43
    const-string v0, "\\#"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    :cond_2
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 51
    move v10, v6

    :goto_0
    array-length v0, v2

    if-eq v10, v0, :cond_b

    .line 53
    aget-char v11, v2, v10

    .line 55
    const/16 v0, 0x20

    if-eq v11, v0, :cond_3

    .line 57
    const/4 v7, 0x1

    .line 60
    :cond_3
    const/16 v0, 0x22

    if-ne v11, v0, :cond_6

    .line 62
    if-nez v3, :cond_5

    .line 64
    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    goto :goto_2

    .line 68
    :cond_5
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    .line 72
    :cond_6
    const/16 v0, 0x5c

    if-ne v11, v0, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    goto :goto_3

    .line 79
    :cond_7
    const/16 v0, 0x20

    if-ne v11, v0, :cond_8

    if-nez v3, :cond_8

    if-nez v7, :cond_8

    .line 81
    goto :goto_3

    .line 83
    :cond_8
    if-eqz v3, :cond_a

    invoke-static {v11}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->isHexDigit(C)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 85
    if-eqz v9, :cond_9

    .line 87
    invoke-static {v9}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ˏ(C)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    invoke-static {v11}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ˏ(C)I

    move-result v1

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    const/4 v3, 0x0

    .line 89
    const/4 v9, 0x0

    .line 90
    goto :goto_3

    .line 92
    :cond_9
    move v9, v11

    .line 93
    goto :goto_3

    .line 95
    :cond_a
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    const/4 v3, 0x0

    .line 51
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 100
    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 102
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_c

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v8, v0, :cond_c

    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_4

    .line 108
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Ljava/lang/StringBuffer;Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V
    .locals 2

    .line 334
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 336
    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    :goto_0
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gG()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ᐝ(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    return-void
.end method

.method public static ˊ(Ljava/lang/StringBuffer;Lorg/spongycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V
    .locals 4

    .line 304
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->gH()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->gJ()[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v1

    .line 307
    const/4 v2, 0x1

    .line 309
    const/4 v3, 0x0

    :goto_0
    array-length v0, v1

    if-eq v3, v0, :cond_1

    .line 311
    if-eqz v2, :cond_0

    .line 313
    const/4 v2, 0x0

    goto :goto_1

    .line 317
    :cond_0
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    :goto_1
    aget-object v0, v1, v3

    invoke-static {p0, v0, p2}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ˊ(Ljava/lang/StringBuffer;Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    :cond_1
    goto :goto_2

    .line 325
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->gI()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ˊ(Ljava/lang/StringBuffer;Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 327
    :goto_2
    return-void
.end method

.method private static ˊ(Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)Z
    .locals 5

    .line 539
    if-ne p0, p1, :cond_0

    .line 541
    const/4 v0, 0x1

    return v0

    .line 544
    :cond_0
    if-nez p0, :cond_1

    .line 546
    const/4 v0, 0x0

    return v0

    .line 549
    :cond_1
    if-nez p1, :cond_2

    .line 551
    const/4 v0, 0x0

    return v0

    .line 554
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 555
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 557
    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 559
    const/4 v0, 0x0

    return v0

    .line 562
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gG()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ᐝ(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->د(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gG()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ᐝ(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->د(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 565
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 567
    const/4 v0, 0x0

    return v0

    .line 570
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private static ˊ(Ljava/util/Vector;)[Ljava/lang/String;
    .locals 3

    .line 210
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 212
    const/4 v2, 0x0

    :goto_0
    array-length v0, v1

    if-eq v2, v0, :cond_0

    .line 214
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-object v1
.end method

.method public static ˊ(Ljava/lang/String;Lorg/spongycastle/asn1/x500/X500NameStyle;)[Lorg/spongycastle/asn1/x500/RDN;
    .locals 12

    .line 131
    new-instance v2, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v2, p0}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v3, Lorg/spongycastle/asn1/x500/X500NameBuilder;

    invoke-direct {v3, p1}, Lorg/spongycastle/asn1/x500/X500NameBuilder;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;)V

    .line 134
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 138
    const/16 v0, 0x2b

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    .line 140
    new-instance v5, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;

    const/16 v0, 0x2b

    invoke-direct {v5, v4, v0}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 141
    new-instance v6, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-direct {v6, v0, v1}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 143
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly formatted directory string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 151
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/spongycastle/asn1/x500/X500NameStyle;->נ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    .line 153
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 156
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 158
    invoke-virtual {v10, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 159
    invoke-static {v8}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 161
    :goto_1
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    new-instance v6, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-direct {v6, v0, v1}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 165
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly formatted directory string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 173
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/spongycastle/asn1/x500/X500NameStyle;->נ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    .line 176
    invoke-virtual {v10, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 177
    invoke-static {v8}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 180
    :cond_2
    invoke-static {v10}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ˋ(Ljava/util/Vector;)[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v11}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ˊ(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/asn1/x500/X500NameBuilder;->ˊ([Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lorg/spongycastle/asn1/x500/X500NameBuilder;

    .line 181
    goto :goto_2

    .line 184
    :cond_3
    invoke-static {v8}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Lorg/spongycastle/asn1/x500/X500NameBuilder;->ˊ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/x500/X500NameBuilder;

    .line 186
    :goto_2
    goto :goto_3

    .line 189
    :cond_4
    new-instance v5, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;

    const/16 v0, 0x3d

    invoke-direct {v5, v4, v0}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 191
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_5

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly formatted directory string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_5
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 199
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/spongycastle/asn1/x500/X500NameStyle;->נ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    .line 201
    invoke-static {v7}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lorg/spongycastle/asn1/x500/X500NameBuilder;->ˊ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/x500/X500NameBuilder;

    .line 203
    :goto_3
    goto/16 :goto_0

    .line 205
    :cond_6
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x500/X500NameBuilder;->gL()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/X500Name;->gK()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v0

    return-object v0
.end method

.method public static ˋ(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z
    .locals 5

    .line 497
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/RDN;->gH()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 499
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->gH()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/RDN;->gJ()[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    .line 502
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->gJ()[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    .line 504
    array-length v0, v2

    array-length v1, v3

    if-eq v0, v1, :cond_0

    .line 506
    const/4 v0, 0x0

    return v0

    .line 509
    :cond_0
    const/4 v4, 0x0

    :goto_0
    array-length v0, v2

    if-eq v4, v0, :cond_2

    .line 511
    aget-object v0, v2, v4

    aget-object v1, v3, v4

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ˊ(Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    const/4 v0, 0x0

    return v0

    .line 509
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 516
    :cond_2
    goto :goto_1

    .line 519
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 524
    :cond_4
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->gH()Z

    move-result v0

    if-nez v0, :cond_5

    .line 526
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/RDN;->gI()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->gI()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ˊ(Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v0

    return v0

    .line 530
    :cond_5
    const/4 v0, 0x0

    return v0

    .line 534
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private static ˋ(Ljava/util/Vector;)[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 3

    .line 222
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 224
    const/4 v2, 0x0

    :goto_0
    array-length v0, v1

    if-eq v2, v0, :cond_0

    .line 226
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aput-object v0, v1, v2

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_0
    return-object v1
.end method

.method public static ˎ(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 4

    .line 264
    invoke-static {p0}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OID."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 268
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    .line 270
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 273
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/util/Strings;->ʰ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v3, v0

    .line 274
    if-nez v3, :cond_2

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - passed to distinguished name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_2
    return-object v3
.end method

.method private static ˏ(C)I
    .locals 2

    .line 118
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 120
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 122
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 124
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 126
    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static د(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 441
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ʰ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 445
    invoke-static {v2}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ہ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 447
    instance-of v0, v3, Lorg/spongycastle/asn1/ASN1String;

    if-eqz v0, :cond_0

    .line 449
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ʰ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ܝ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    return-object v2
.end method

.method private static ہ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 462
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 464
    :catch_0
    move-exception v3

    .line 466
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown encoding in name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ܝ(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 473
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 475
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 481
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 483
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 484
    const/16 v0, 0x20

    if-ne v2, v0, :cond_0

    const/16 v0, 0x20

    if-eq v4, v0, :cond_1

    .line 486
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 488
    :cond_1
    move v2, v4

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ᐝ(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 8

    .line 352
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 354
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1String;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lorg/spongycastle/asn1/DERUniversalString;

    if-nez v0, :cond_1

    .line 356
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    :goto_0
    goto :goto_1

    .line 370
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->ײ([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ᴵ([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    goto :goto_1

    .line 372
    :catch_0
    move-exception v4

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Other value has no encoded form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 379
    const/4 v5, 0x0

    .line 381
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 383
    add-int/lit8 v5, v5, 0x2

    .line 386
    :cond_2
    :goto_2
    if-eq v5, v4, :cond_5

    .line 388
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_4

    .line 397
    :cond_3
    const-string v0, "\\"

    invoke-virtual {v3, v5, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    add-int/lit8 v5, v5, 0x1

    .line 399
    add-int/lit8 v4, v4, 0x1

    .line 402
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 405
    :cond_5
    const/4 v6, 0x0

    .line 406
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 408
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le v0, v6, :cond_6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 410
    const-string v0, "\\"

    invoke-virtual {v3, v6, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    .line 415
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 417
    :goto_4
    if-ltz v7, :cond_7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    .line 419
    const/16 v0, 0x5c

    invoke-virtual {v3, v7, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 420
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 423
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ᐝ(Ljava/lang/String;I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 6

    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    .line 288
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_0

    .line 290
    mul-int/lit8 v0, v3, 0x2

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 291
    mul-int/lit8 v0, v3, 0x2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 293
    invoke-static {v4}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ˏ(C)I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    invoke-static {v5}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ˏ(C)I

    move-result v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 288
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method private static ᴵ([B)Ljava/lang/String;
    .locals 4

    .line 429
    array-length v0, p0

    new-array v2, v0, [C

    .line 431
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_0

    .line 433
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    aput-char v0, v2, v3

    .line 431
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
