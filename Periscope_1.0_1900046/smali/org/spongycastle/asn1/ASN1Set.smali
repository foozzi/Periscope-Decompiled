.class public abstract Lorg/spongycastle/asn1/ASN1Set;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""


# instance fields
.field private aax:Ljava/util/Vector;

.field private aay:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aay:Z

    .line 223
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 231
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aay:Z

    .line 232
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V
    .locals 3

    .line 243
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aay:Z

    .line 244
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ʱ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_0
    if-eqz p2, :cond_1

    .line 251
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->sort()V

    .line 253
    :cond_1
    return-void
.end method

.method protected constructor <init>([Lorg/spongycastle/asn1/ASN1Encodable;Z)V
    .locals 3

    .line 261
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aay:Z

    .line 262
    const/4 v2, 0x0

    :goto_0
    array-length v0, p1

    if-eq v2, v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_0
    if-eqz p2, :cond_1

    .line 269
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->sort()V

    .line 271
    :cond_1
    return-void
.end method

.method public static ɩ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;
    .locals 4

    .line 111
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    return-object v0

    .line 115
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1SetParser;

    if-eqz v0, :cond_2

    .line 117
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1SetParser;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1SetParser;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Set;->ɩ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0

    .line 119
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 123
    move-object v0, p0

    :try_start_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Set;->ɩ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 125
    :catch_0
    move-exception v3

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct set from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_3
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_4

    .line 132
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 134
    instance-of v0, v3, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_4

    .line 136
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    return-object v0

    .line 140
    :cond_4
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
.end method

.method public static ʻ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;
    .locals 4

    .line 164
    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    return-object v0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    instance-of v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;

    if-eqz v0, :cond_2

    .line 184
    new-instance v0, Lorg/spongycastle/asn1/BERSet;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 188
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DLSet;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DLSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_4

    .line 195
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    return-object v0

    .line 202
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_6

    .line 204
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v3, v0

    .line 206
    instance-of v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;

    if-eqz v0, :cond_5

    .line 208
    new-instance v0, Lorg/spongycastle/asn1/BERSet;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->eS()[Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BERSet;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 212
    :cond_5
    new-instance v0, Lorg/spongycastle/asn1/DLSet;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->eS()[Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DLSet;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 218
    :cond_6
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
.end method

.method private ˊ(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 2

    .line 455
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    move-object v1, v0

    .line 458
    if-nez v1, :cond_0

    .line 460
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    return-object v0

    .line 463
    :cond_0
    return-object v1
.end method

.method private ˋ([B[B)Z
    .locals 5

    .line 473
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 474
    const/4 v4, 0x0

    :goto_0
    if-eq v4, v3, :cond_2

    .line 476
    aget-byte v0, p1, v4

    aget-byte v1, p2, v4

    if-eq v0, v1, :cond_1

    .line 478
    aget-byte v0, p1, v4

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p2, v4

    and-int/lit16 v1, v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 474
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 481
    :cond_2
    array-length v0, p1

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private ˎ(Lorg/spongycastle/asn1/ASN1Encodable;)[B
    .locals 5

    .line 487
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 488
    new-instance v3, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 492
    :try_start_0
    invoke-virtual {v3, p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    goto :goto_0

    .line 494
    :catch_0
    move-exception v4

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot encode object added to SET"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method eO()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 376
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aay:Z

    if-eqz v0, :cond_0

    .line 378
    new-instance v1, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v1}, Lorg/spongycastle/asn1/DERSet;-><init>()V

    .line 380
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    iput-object v0, v1, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    .line 382
    return-object v1

    .line 386
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 388
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 390
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v2}, Lorg/spongycastle/asn1/DERSet;-><init>()V

    .line 395
    iput-object v1, v2, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    .line 397
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Set;->sort()V

    .line 399
    return-object v2
.end method

.method eP()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 409
    new-instance v1, Lorg/spongycastle/asn1/DLSet;

    invoke-direct {v1}, Lorg/spongycastle/asn1/DLSet;-><init>()V

    .line 411
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    iput-object v0, v1, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    .line 413
    return-object v1
.end method

.method public eT()Ljava/util/Enumeration;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method ex()Z
    .locals 1

    .line 550
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 356
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->eT()Ljava/util/Enumeration;

    move-result-object v1

    .line 357
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v2

    .line 359
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/ASN1Set;->ˊ(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 362
    mul-int/lit8 v2, v2, 0x11

    .line 364
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v2, v0

    .line 365
    goto :goto_0

    .line 367
    :cond_0
    return v2
.end method

.method public size()I
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected sort()V
    .locals 10

    .line 504
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aay:Z

    if-nez v0, :cond_2

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aay:Z

    .line 507
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 509
    const/4 v3, 0x1

    .line 510
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 512
    :goto_0
    if-eqz v3, :cond_2

    .line 514
    const/4 v5, 0x0

    .line 515
    const/4 v6, 0x0

    .line 516
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/ASN1Set;->ˎ(Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v7

    .line 518
    const/4 v3, 0x0

    .line 520
    :goto_1
    if-eq v5, v4, :cond_1

    .line 522
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/ASN1Set;->ˎ(Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v8

    .line 524
    invoke-direct {p0, v7, v8}, Lorg/spongycastle/asn1/ASN1Set;->ˋ([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    move-object v7, v8

    goto :goto_2

    .line 530
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 532
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 533
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v9, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 535
    const/4 v3, 0x1

    .line 536
    move v6, v5

    .line 539
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 540
    goto :goto_1

    .line 542
    :cond_1
    move v4, v6

    .line 543
    goto :goto_0

    .line 546
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 558
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 9

    .line 419
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x0

    return v0

    .line 424
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    move-object v2, v0

    .line 426
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 428
    const/4 v0, 0x0

    return v0

    .line 431
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->eT()Ljava/util/Enumeration;

    move-result-object v3

    .line 432
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Set;->eT()Ljava/util/Enumeration;

    move-result-object v4

    .line 434
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/ASN1Set;->ˊ(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 437
    invoke-direct {p0, v4}, Lorg/spongycastle/asn1/ASN1Set;->ˊ(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    .line 439
    invoke-interface {v5}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 440
    invoke-interface {v6}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v8

    .line 442
    if-eq v7, v8, :cond_2

    invoke-virtual {v7, v8}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    goto :goto_0

    .line 447
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 450
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->aax:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method
