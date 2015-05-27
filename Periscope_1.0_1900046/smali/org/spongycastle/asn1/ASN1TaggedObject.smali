.class public abstract Lorg/spongycastle/asn1/ASN1TaggedObject;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field aaC:I

.field aaD:Z

.field aaE:Z

.field aaF:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaD:Z

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaE:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 68
    instance-of v0, p3, Lorg/spongycastle/asn1/ASN1Choice;

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaE:Z

    goto :goto_0

    .line 74
    :cond_0
    iput-boolean p1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaE:Z

    .line 77
    :goto_0
    iput p2, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaC:I

    .line 79
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaE:Z

    if-eqz v0, :cond_1

    .line 81
    iput-object p3, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_1

    .line 85
    :cond_1
    invoke-interface {p3}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 87
    instance-of v0, v1, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_2

    .line 89
    const/4 v2, 0x0

    .line 92
    :cond_2
    iput-object p3, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 94
    :goto_1
    return-void
.end method

.method public static ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;
    .locals 4

    .line 34
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    return-object v0

    .line 38
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 42
    move-object v0, p0

    :try_start_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 44
    :catch_0
    move-exception v3

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct tagged object from byte[]: "

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

    .line 50
    :cond_2
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

.method public static ʼ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1TaggedObject;
    .locals 2

    .line 23
    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "implicitly tagged tagged object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public eN()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method eO()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 221
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-boolean v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaE:Z

    iget v2, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaC:I

    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method eP()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 226
    new-instance v0, Lorg/spongycastle/asn1/DLTaggedObject;

    iget-boolean v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaE:Z

    iget v2, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaC:I

    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/DLTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public eW()I
    .locals 1

    .line 148
    iget v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaC:I

    return v0
.end method

.method public eX()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaE:Z

    return v0
.end method

.method public eY()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 131
    iget v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaC:I

    .line 138
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 143
    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaD:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 99
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-object v2, v0

    .line 106
    iget v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaC:I

    iget v1, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaC:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaD:Z

    iget-boolean v1, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaD:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaE:Z

    iget-boolean v1, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaE:Z

    if-eq v0, v1, :cond_2

    .line 108
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_3

    .line 113
    iget-object v0, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_4

    .line 115
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    iget-object v1, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 122
    const/4 v0, 0x0

    return v0

    .line 126
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
