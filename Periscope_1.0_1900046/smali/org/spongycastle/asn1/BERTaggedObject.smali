.class public Lorg/spongycastle/asn1/BERTaggedObject;
.super Lorg/spongycastle/asn1/ASN1TaggedObject;
.source ""


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 23
    return-void
.end method

.method public constructor <init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 36
    return-void
.end method


# virtual methods
.method ex()Z
    .locals 2

    .line 50
    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaD:Z

    if-nez v0, :cond_1

    .line 52
    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaE:Z

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->eO()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->ex()Z

    move-result v0

    return v0

    .line 65
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method ey()I
    .locals 4

    .line 72
    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaD:Z

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Primitive;->ey()I

    move-result v3

    .line 77
    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaE:Z

    if-eqz v0, :cond_0

    .line 79
    iget v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaC:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->ј(I)I

    move-result v0

    invoke-static {v3}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0

    .line 84
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 86
    iget v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaC:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->ј(I)I

    move-result v0

    add-int/2addr v0, v3

    return v0

    .line 91
    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaC:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->ј(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 6

    .line 99
    iget v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaC:I

    const/16 v1, 0xa0

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ו(II)V

    .line 100
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 102
    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaD:Z

    if-nez v0, :cond_6

    .line 104
    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaE:Z

    if-nez v0, :cond_5

    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/BEROctetString;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BEROctetString;->eT()Ljava/util/Enumeration;

    move-result-object v3

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object v4, v0

    .line 116
    new-instance v5, Lorg/spongycastle/asn1/BEROctetString;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/BEROctetString;-><init>([B)V

    .line 117
    invoke-virtual {v5}, Lorg/spongycastle/asn1/BEROctetString;->eT()Ljava/util/Enumeration;

    move-result-object v3

    .line 118
    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v3

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->eT()Ljava/util/Enumeration;

    move-result-object v3

    goto :goto_0

    .line 130
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 137
    :cond_4
    goto :goto_1

    .line 140
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 144
    :cond_6
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 146
    return-void
.end method
