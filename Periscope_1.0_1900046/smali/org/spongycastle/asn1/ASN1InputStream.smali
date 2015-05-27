.class public Lorg/spongycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/BERTags;


# instance fields
.field private final aao:Z

.field private final aap:[[B

.field private final limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 29
    invoke-static {p1}, Lorg/spongycastle/asn1/StreamUtil;->ʾ(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    iput p2, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    .line 100
    iput-boolean p3, p0, Lorg/spongycastle/asn1/ASN1InputStream;->aao:Z

    .line 101
    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->aap:[[B

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    .line 82
    invoke-static {p1}, Lorg/spongycastle/asn1/StreamUtil;->ʾ(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 83
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 42
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2

    .line 55
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 56
    return-void
.end method

.method static ˊ(ILorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 430
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 433
    :pswitch_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    invoke-static {v0, p1}, Lorg/spongycastle/asn1/DERBitString;->ˊ(ILjava/io/InputStream;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    return-object v0

    .line 435
    :pswitch_1
    new-instance v0, Lorg/spongycastle/asn1/DERBMPString;

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->ˋ(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBMPString;-><init>([C)V

    return-object v0

    .line 437
    :pswitch_2
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;->ˊ(Lorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->ﹳ([B)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v0

    return-object v0

    .line 439
    :pswitch_3
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;->ˊ(Lorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->ﾞ([B)Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object v0

    return-object v0

    .line 441
    :pswitch_4
    new-instance v0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    return-object v0

    .line 443
    :pswitch_5
    new-instance v0, Lorg/spongycastle/asn1/DERGeneralString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERGeneralString;-><init>([B)V

    return-object v0

    .line 445
    :pswitch_6
    new-instance v0, Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERIA5String;-><init>([B)V

    return-object v0

    .line 447
    :pswitch_7
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>([BZ)V

    return-object v0

    .line 449
    :pswitch_8
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    return-object v0

    .line 451
    :pswitch_9
    new-instance v0, Lorg/spongycastle/asn1/DERNumericString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERNumericString;-><init>([B)V

    return-object v0

    .line 453
    :pswitch_a
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;->ˊ(Lorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ʹ([B)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0

    .line 455
    :pswitch_b
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0

    .line 457
    :pswitch_c
    new-instance v0, Lorg/spongycastle/asn1/DERPrintableString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERPrintableString;-><init>([B)V

    return-object v0

    .line 459
    :pswitch_d
    new-instance v0, Lorg/spongycastle/asn1/DERT61String;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERT61String;-><init>([B)V

    return-object v0

    .line 461
    :pswitch_e
    new-instance v0, Lorg/spongycastle/asn1/DERUniversalString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERUniversalString;-><init>([B)V

    return-object v0

    .line 463
    :pswitch_f
    new-instance v0, Lorg/spongycastle/asn1/ASN1UTCTime;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1UTCTime;-><init>([B)V

    return-object v0

    .line 465
    :pswitch_10
    new-instance v0, Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERUTF8String;-><init>([B)V

    return-object v0

    .line 467
    :pswitch_11
    new-instance v0, Lorg/spongycastle/asn1/DERVisibleString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERVisibleString;-><init>([B)V

    return-object v0

    .line 469
    :goto_0
    :pswitch_12
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_3
        :pswitch_12
        :pswitch_10
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_12
        :pswitch_6
        :pswitch_f
        :pswitch_4
        :pswitch_12
        :pswitch_11
        :pswitch_5
        :pswitch_e
        :pswitch_12
        :pswitch_1
    .end packed-switch
.end method

.method private static ˊ(Lorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .locals 4

    .line 380
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v2

    .line 381
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 383
    aget-object v3, p1, v2

    .line 385
    if-nez v3, :cond_0

    .line 387
    new-array v3, v2, [B

    aput-object v3, p1, v2

    .line 390
    :cond_0
    invoke-static {p0, v3}, Lorg/spongycastle/util/io/Streams;->ˎ(Ljava/io/InputStream;[B)I

    .line 392
    return-object v3

    .line 396
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static ˋ(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)[C
    .locals 8

    .line 403
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 404
    new-array v4, v3, [C

    .line 405
    const/4 v5, 0x0

    .line 406
    :goto_0
    if-ge v5, v3, :cond_2

    .line 408
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v6

    .line 409
    if-gez v6, :cond_0

    .line 411
    goto :goto_1

    .line 413
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v7

    .line 414
    if-gez v7, :cond_1

    .line 416
    goto :goto_1

    .line 418
    :cond_1
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v1, v6, 0x8

    and-int/lit16 v2, v7, 0xff

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v4, v0

    .line 419
    goto :goto_0

    .line 421
    :cond_2
    :goto_1
    return-object v4
.end method

.method static ˎ(Ljava/io/InputStream;I)I
    .locals 4

    .line 290
    and-int/lit8 v2, p1, 0x1f

    .line 295
    const/16 v0, 0x1f

    if-ne v2, v0, :cond_3

    .line 297
    const/4 v2, 0x0

    .line 299
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 303
    and-int/lit8 v0, v3, 0x7f

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - invalid high tag number found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    :goto_0
    if-ltz v3, :cond_1

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_1

    .line 310
    and-int/lit8 v0, v3, 0x7f

    or-int/2addr v2, v0

    .line 311
    shl-int/lit8 v2, v2, 0x7

    .line 312
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_0

    .line 315
    :cond_1
    if-gez v3, :cond_2

    .line 317
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF found inside tag value."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_2
    and-int/lit8 v0, v3, 0x7f

    or-int/2addr v2, v0

    .line 323
    :cond_3
    return v2
.end method

.method static ˏ(Ljava/io/InputStream;I)I
    .locals 7

    .line 329
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 330
    if-gez v3, :cond_0

    .line 332
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF found when length expected"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    const/16 v0, 0x80

    if-ne v3, v0, :cond_1

    .line 337
    const/4 v0, -0x1

    return v0

    .line 340
    :cond_1
    const/16 v0, 0x7f

    if-le v3, v0, :cond_6

    .line 342
    and-int/lit8 v4, v3, 0x7f

    .line 345
    const/4 v0, 0x4

    if-le v4, v0, :cond_2

    .line 347
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DER length more than 4 bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_2
    const/4 v3, 0x0

    .line 351
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    .line 353
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 355
    if-gez v6, :cond_3

    .line 357
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF found reading length"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_3
    shl-int/lit8 v0, v3, 0x8

    add-int v3, v0, v6

    .line 351
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 363
    :cond_4
    if-gez v3, :cond_5

    .line 365
    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - negative length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_5
    if-lt v3, p1, :cond_6

    .line 370
    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - out of bounds length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_6
    return v3
.end method


# virtual methods
.method eE()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    return v0
.end method

.method protected eF()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    invoke-static {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->ˏ(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method eG()Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 2

    .line 196
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 199
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 204
    :cond_0
    return-object v0
.end method

.method public eH()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 8

    .line 216
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->read()I

    move-result v2

    .line 217
    if-gtz v2, :cond_1

    .line 219
    if-nez v2, :cond_0

    .line 221
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 230
    :cond_1
    invoke-static {p0, v2}, Lorg/spongycastle/asn1/ASN1InputStream;->ˎ(Ljava/io/InputStream;I)I

    move-result v3

    .line 232
    and-int/lit8 v0, v2, 0x20

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 237
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->eF()I

    move-result v5

    .line 239
    if-gez v5, :cond_6

    .line 241
    if-nez v4, :cond_3

    .line 243
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_3
    new-instance v6, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    iget v0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v6, p0, v0}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 247
    new-instance v7, Lorg/spongycastle/asn1/ASN1StreamParser;

    iget v0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v7, v6, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 249
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_4

    .line 251
    new-instance v0, Lorg/spongycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v0, v3, v7}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;-><init>(ILorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->eN()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 254
    :cond_4
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_5

    .line 256
    new-instance v0, Lorg/spongycastle/asn1/BERTaggedObjectParser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3, v7}, Lorg/spongycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERTaggedObjectParser;->eN()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 260
    :cond_5
    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 263
    :sswitch_0
    new-instance v0, Lorg/spongycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/BEROctetStringParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BEROctetStringParser;->eN()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 265
    :sswitch_1
    new-instance v0, Lorg/spongycastle/asn1/BERSequenceParser;

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/BERSequenceParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERSequenceParser;->eN()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 267
    :sswitch_2
    new-instance v0, Lorg/spongycastle/asn1/BERSetParser;

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/BERSetParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERSetParser;->eN()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 269
    :sswitch_3
    new-instance v0, Lorg/spongycastle/asn1/DERExternalParser;

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/DERExternalParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERExternalParser;->eN()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 271
    :goto_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_6
    :try_start_0
    invoke-virtual {p0, v2, v3, v5}, Lorg/spongycastle/asn1/ASN1InputStream;->ˉ(III)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 280
    :catch_0
    move-exception v6

    .line 282
    new-instance v0, Lorg/spongycastle/asn1/ASN1Exception;

    const-string v1, "corrupted stream detected"

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method protected ˉ(III)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 8

    .line 140
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 142
    :goto_0
    new-instance v4, Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v4, p0, p3}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 144
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    .line 146
    new-instance v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v3, p2, v1}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    return-object v0

    .line 149
    :cond_1
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_2

    .line 151
    new-instance v0, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v3, p2}, Lorg/spongycastle/asn1/ASN1StreamParser;->ˋ(ZI)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 154
    :cond_2
    if-eqz v3, :cond_5

    .line 157
    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_2

    .line 163
    :sswitch_0
    invoke-virtual {p0, v4}, Lorg/spongycastle/asn1/ASN1InputStream;->ˊ(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v5

    .line 164
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    new-array v6, v0, [Lorg/spongycastle/asn1/ASN1OctetString;

    .line 166
    const/4 v7, 0x0

    :goto_1
    array-length v0, v6

    if-eq v7, v0, :cond_3

    .line 168
    invoke-virtual {v5, v7}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ʱ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    aput-object v0, v6, v7

    .line 166
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 171
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/BEROctetString;

    invoke-direct {v0, v6}, Lorg/spongycastle/asn1/BEROctetString;-><init>([Lorg/spongycastle/asn1/ASN1OctetString;)V

    return-object v0

    .line 173
    :sswitch_1
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->aao:Z

    if-eqz v0, :cond_4

    .line 175
    new-instance v0, Lorg/spongycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/LazyEncodedSequence;-><init>([B)V

    return-object v0

    .line 179
    :cond_4
    invoke-virtual {p0, v4}, Lorg/spongycastle/asn1/ASN1InputStream;->ˊ(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERFactory;->ˋ(Lorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0

    .line 182
    :sswitch_2
    invoke-virtual {p0, v4}, Lorg/spongycastle/asn1/ASN1InputStream;->ˊ(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERFactory;->ˎ(Lorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0

    .line 184
    :sswitch_3
    new-instance v0, Lorg/spongycastle/asn1/DERExternal;

    invoke-virtual {p0, v4}, Lorg/spongycastle/asn1/ASN1InputStream;->ˊ(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERExternal;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0

    .line 186
    :goto_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->aap:[[B

    invoke-static {p2, v4, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->ˊ(ILorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method ˊ(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 1

    .line 210
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->eG()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    return-object v0
.end method
