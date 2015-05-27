.class public abstract Lorg/spongycastle/asn1/ASN1Sequence;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""


# instance fields
.field protected aav:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 165
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    .line 166
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 174
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    .line 175
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 3

    .line 184
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    .line 185
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ʱ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method protected constructor <init>([Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 3

    .line 196
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    .line 197
    const/4 v2, 0x0

    :goto_0
    array-length v0, p1

    if-eq v2, v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method private ˊ(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 2

    .line 339
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    move-object v1, v0

    .line 341
    return-object v1
.end method

.method public static ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 3

    .line 122
    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    instance-of v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;

    if-eqz v0, :cond_2

    .line 142
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 146
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DLSequence;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DLSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_4

    .line 153
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0

    .line 158
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

.method public static ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 4

    .line 69
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0

    .line 73
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    if-eqz v0, :cond_2

    .line 75
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1SequenceParser;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0

    .line 77
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 81
    move-object v0, p0

    :try_start_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 83
    :catch_0
    move-exception v3

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct sequence from byte[]: "

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

    .line 88
    :cond_3
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_4

    .line 90
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 92
    instance-of v0, v3, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_4

    .line 94
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0

    .line 98
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


# virtual methods
.method eO()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 350
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1}, Lorg/spongycastle/asn1/DERSequence;-><init>()V

    .line 352
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    iput-object v0, v1, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    .line 354
    return-object v1
.end method

.method eP()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 363
    new-instance v1, Lorg/spongycastle/asn1/DLSequence;

    invoke-direct {v1}, Lorg/spongycastle/asn1/DLSequence;-><init>()V

    .line 365
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    iput-object v0, v1, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    .line 367
    return-object v1
.end method

.method public eS()[Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 3

    .line 205
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/spongycastle/asn1/ASN1Encodable;

    .line 207
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 209
    invoke-virtual {p0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    aput-object v0, v1, v2

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-object v1
.end method

.method public eT()Ljava/util/Enumeration;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method ex()Z
    .locals 1

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 286
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v1

    .line 287
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    .line 289
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ˊ(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 292
    mul-int/lit8 v2, v2, 0x11

    .line 294
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v2, v0

    .line 295
    goto :goto_0

    .line 297
    :cond_0
    return v2
.end method

.method public size()I
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 9

    .line 303
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x0

    return v0

    .line 308
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v2, v0

    .line 310
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 312
    const/4 v0, 0x0

    return v0

    .line 315
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v3

    .line 316
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v4

    .line 318
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->ˊ(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 321
    invoke-direct {p0, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->ˊ(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    .line 323
    invoke-interface {v5}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 324
    invoke-interface {v6}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v8

    .line 326
    if-eq v7, v8, :cond_2

    invoke-virtual {v7, v8}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    goto :goto_0

    .line 331
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->aav:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method
