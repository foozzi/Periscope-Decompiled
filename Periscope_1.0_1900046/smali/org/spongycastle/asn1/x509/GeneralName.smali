.class public Lorg/spongycastle/asn1/x509/GeneralName;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private aaF:Lorg/spongycastle/asn1/ASN1Encodable;

.field private tag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    .line 141
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 142
    iput p1, p0, Lorg/spongycastle/asn1/x509/GeneralName;->tag:I

    .line 144
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 146
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_1

    .line 148
    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 150
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_1

    .line 152
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 154
    new-instance v0, Lorg/spongycastle/asn1/x500/X500Name;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_1

    .line 156
    :cond_3
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 158
    invoke-direct {p0, p2}, Lorg/spongycastle/asn1/x509/GeneralName;->า(Ljava/lang/String;)[B

    move-result-object v3

    .line 159
    if-eqz v3, :cond_4

    .line 161
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 165
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IP Address is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :goto_0
    goto :goto_1

    .line 170
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process String for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :goto_1
    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 111
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 112
    iput p1, p0, Lorg/spongycastle/asn1/x509/GeneralName;->tag:I

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 77
    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->tag:I

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/X509Name;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 69
    invoke-static {p1}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->tag:I

    .line 71
    return-void
.end method

.method private ˊ(Ljava/lang/String;[BI)V
    .locals 6

    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 336
    const/4 v5, 0x0

    :goto_0
    if-eq v5, v4, :cond_0

    .line 338
    div-int/lit8 v0, v5, 0x8

    add-int/2addr v0, p3

    aget-byte v1, p2, v0

    rem-int/lit8 v2, v5, 0x8

    rsub-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 336
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method private ˊ([I[BI)V
    .locals 4

    .line 367
    const/4 v3, 0x0

    :goto_0
    array-length v0, p1

    if-eq v3, v0, :cond_0

    .line 369
    mul-int/lit8 v0, v3, 0x2

    add-int/2addr v0, p3

    aget v1, p1, v3

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 370
    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p3

    aget v1, p1, v3

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method private ˋ(Ljava/lang/String;[BI)V
    .locals 4

    .line 344
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, "./"

    invoke-direct {v2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v3, 0x0

    .line 347
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, p3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    goto :goto_0

    .line 351
    :cond_0
    return-void
.end method

.method public static ˌ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .line 229
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʼ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ﻳ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method private า(Ljava/lang/String;)[B
    .locals 6

    .line 266
    invoke-static {p1}, Lorg/spongycastle/util/IPAddress;->ɪ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/spongycastle/util/IPAddress;->ɾ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 270
    if-gez v2, :cond_1

    .line 272
    const/16 v0, 0x10

    new-array v3, v0, [B

    .line 273
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/x509/GeneralName;->ᒃ(Ljava/lang/String;)[I

    move-result-object v4

    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, v4, v3, v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ˊ([I[BI)V

    .line 276
    return-object v3

    .line 280
    :cond_1
    const/16 v0, 0x20

    new-array v3, v0, [B

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ᒃ(Ljava/lang/String;)[I

    move-result-object v4

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v4, v3, v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ˊ([I[BI)V

    .line 283
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 284
    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 286
    invoke-direct {p0, v5}, Lorg/spongycastle/asn1/x509/GeneralName;->ᒃ(Ljava/lang/String;)[I

    move-result-object v4

    goto :goto_0

    .line 290
    :cond_2
    invoke-direct {p0, v5}, Lorg/spongycastle/asn1/x509/GeneralName;->ᐥ(Ljava/lang/String;)[I

    move-result-object v4

    .line 292
    :goto_0
    const/16 v0, 0x10

    invoke-direct {p0, v4, v3, v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ˊ([I[BI)V

    .line 294
    return-object v3

    .line 297
    :cond_3
    invoke-static {p1}, Lorg/spongycastle/util/IPAddress;->ɨ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lorg/spongycastle/util/IPAddress;->ȋ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 299
    :cond_4
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 301
    if-gez v2, :cond_5

    .line 303
    const/4 v0, 0x4

    new-array v3, v0, [B

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ˋ(Ljava/lang/String;[BI)V

    .line 307
    return-object v3

    .line 311
    :cond_5
    const/16 v0, 0x8

    new-array v3, v0, [B

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lorg/spongycastle/asn1/x509/GeneralName;->ˋ(Ljava/lang/String;[BI)V

    .line 315
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 316
    const/16 v0, 0x2e

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_6

    .line 318
    const/4 v0, 0x4

    invoke-direct {p0, v4, v3, v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ˋ(Ljava/lang/String;[BI)V

    goto :goto_1

    .line 322
    :cond_6
    const/4 v0, 0x4

    invoke-direct {p0, v4, v3, v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ˊ(Ljava/lang/String;[BI)V

    .line 325
    :goto_1
    return-object v3

    .line 329
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private ᐥ(Ljava/lang/String;)[I
    .locals 7

    .line 355
    const/16 v0, 0x8

    new-array v4, v0, [I

    .line 356
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 358
    const/4 v6, 0x0

    :goto_0
    if-eq v6, v5, :cond_0

    .line 360
    div-int/lit8 v0, v6, 0x10

    aget v1, v4, v0

    rem-int/lit8 v2, v6, 0x10

    rsub-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    aput v1, v4, v0

    .line 358
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 362
    :cond_0
    return-object v4
.end method

.method private ᒃ(Ljava/lang/String;)[I
    .locals 9

    .line 376
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, ":"

    const/4 v1, 0x1

    invoke-direct {v3, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 377
    const/4 v4, 0x0

    .line 378
    const/16 v0, 0x8

    new-array v5, v0, [I

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    .line 382
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 385
    :cond_0
    const/4 v6, -0x1

    .line 387
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 391
    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    move v6, v4

    .line 394
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    aput v1, v5, v0

    goto :goto_1

    .line 398
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 400
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v1, 0x10

    invoke-static {v7, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v5, v0

    .line 401
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_1

    .line 408
    :cond_2
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v0, "."

    invoke-direct {v8, v7, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    aput v1, v5, v0

    .line 411
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    aput v1, v5, v0

    .line 414
    :cond_3
    :goto_1
    goto/16 :goto_0

    .line 416
    :cond_4
    array-length v0, v5

    if-eq v4, v0, :cond_5

    .line 418
    array-length v0, v5

    sub-int v1, v4, v6

    sub-int/2addr v0, v1

    sub-int v1, v4, v6

    invoke-static {v5, v6, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    move v7, v6

    :goto_2
    array-length v0, v5

    sub-int v1, v4, v6

    sub-int/2addr v0, v1

    if-eq v7, v0, :cond_5

    .line 421
    const/4 v0, 0x0

    aput v0, v5, v7

    .line 419
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 425
    :cond_5
    return-object v5
.end method

.method public static ﻳ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 5

    .line 177
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/GeneralName;

    return-object v0

    .line 182
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    .line 184
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-object v3, v0

    .line 185
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v4

    .line 187
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 190
    :pswitch_0
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 192
    :pswitch_1
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/spongycastle/asn1/DERIA5String;->ͺ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 194
    :pswitch_2
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/spongycastle/asn1/DERIA5String;->ͺ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 196
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :pswitch_4
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v1, 0x1

    invoke-static {v3, v1}, Lorg/spongycastle/asn1/x500/X500Name;->ʾ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 200
    :pswitch_5
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 202
    :pswitch_6
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/spongycastle/asn1/DERIA5String;->ͺ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 204
    :pswitch_7
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/spongycastle/asn1/ASN1OctetString;->ˏ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 206
    :pswitch_8
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ˎ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 210
    :cond_2
    :goto_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 214
    move-object v0, p0

    :try_start_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ﻳ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 216
    :catch_0
    move-exception v3

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unable to parse encoded general name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public eW()I
    .locals 1

    .line 234
    iget v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->tag:I

    return v0
.end method

.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 430
    iget v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 432
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/spongycastle/asn1/x509/GeneralName;->tag:I

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 436
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/spongycastle/asn1/x509/GeneralName;->tag:I

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public hw()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    iget v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->tag:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 247
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    iget v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 253
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lorg/spongycastle/asn1/DERIA5String;->ˀ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    goto :goto_1

    .line 256
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    goto :goto_1

    .line 259
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralName;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
