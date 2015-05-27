.class public Lorg/spongycastle/asn1/ASN1GeneralizedTime;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""


# instance fields
.field private aam:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 92
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 93
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->Ϊ(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->aam:[B

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 98
    :catch_0
    move-exception v3

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid date string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :goto_0
    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 140
    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->aam:[B

    .line 141
    return-void
.end method

.method private eC()Ljava/lang/String;
    .locals 8

    .line 206
    const-string v2, "+"

    .line 207
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 208
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    .line 209
    if-gez v4, :cond_0

    .line 211
    const-string v2, "-"

    .line 212
    neg-int v4, v4

    .line 214
    :cond_0
    const v0, 0x36ee80

    div-int v5, v4, v0

    .line 215
    mul-int/lit8 v0, v5, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    sub-int v0, v4, v0

    const v1, 0xea60

    div-int v6, v0, v1

    .line 219
    :try_start_0
    invoke-virtual {v3}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    const-string v0, "+"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    add-int/2addr v0, v5

    move v5, v0

    .line 227
    :cond_2
    goto :goto_1

    .line 224
    :catch_0
    move-exception v7

    .line 229
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v5}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->ˠ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v6}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->ˠ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private eD()Z
    .locals 3

    .line 326
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->aam:[B

    array-length v0, v0

    if-eq v2, v0, :cond_1

    .line 328
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->aam:[B

    aget-byte v0, v0, v2

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 330
    const/16 v0, 0xe

    if-ne v2, v0, :cond_0

    .line 332
    const/4 v0, 0x1

    return v0

    .line 326
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private ˠ(I)Ljava/lang/String;
    .locals 2

    .line 234
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ᵥ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 4

    .line 35
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object v0

    .line 40
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 44
    move-object v0, p0

    :try_start_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 46
    :catch_0
    move-exception v3

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding error in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public eB()Ljava/lang/String;
    .locals 6

    .line 167
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->aam:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ї([B)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GMT+00:00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v4, v0, -0x5

    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 180
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_1

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_2

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v4, 0x3

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v4, 0x3

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v4, v0, -0x3

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 192
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_3

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_4

    .line 194
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->eC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ex()Z
    .locals 1

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 3

    .line 346
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->aam:[B

    array-length v2, v0

    .line 348
    invoke-static {v2}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 9

    .line 246
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->aam:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ї([B)Ljava/lang/String;

    move-result-object v4

    .line 247
    move-object v5, v4

    .line 249
    const-string v0, "Z"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->eD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss.SSS\'Z\'"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss\'Z\'"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 260
    :goto_0
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "Z"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_3

    .line 262
    :cond_1
    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gtz v0, :cond_2

    const/16 v0, 0x2b

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    .line 264
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->eB()Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->eD()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss.SSSz"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :cond_3
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmssz"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 274
    :goto_1
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "Z"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_3

    .line 278
    :cond_4
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->eD()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss.SSS"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 284
    :cond_5
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 287
    :goto_2
    new-instance v0, Ljava/util/SimpleTimeZone;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 290
    :goto_3
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->eD()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 293
    const/16 v0, 0xe

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 295
    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_7

    .line 297
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 298
    const/16 v0, 0x30

    if-gt v0, v8, :cond_7

    const/16 v0, 0x39

    if-le v8, v0, :cond_6

    .line 300
    goto :goto_5

    .line 295
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 304
    :cond_7
    :goto_5
    add-int/lit8 v0, v7, -0x1

    const/4 v1, 0x3

    if-le v0, v1, :cond_8

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 309
    :cond_8
    add-int/lit8 v0, v7, -0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 314
    :cond_9
    add-int/lit8 v0, v7, -0x1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 321
    :cond_a
    :goto_6
    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 371
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->aam:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 355
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->aam:[B

    const/16 v1, 0x18

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 356
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 2

    .line 361
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->aam:[B

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    iget-object v1, v1, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->aam:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method
