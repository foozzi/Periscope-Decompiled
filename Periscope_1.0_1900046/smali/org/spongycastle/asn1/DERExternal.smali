.class public Lorg/spongycastle/asn1/DERExternal;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""


# instance fields
.field private abd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private abe:Lorg/spongycastle/asn1/ASN1Integer;

.field private abf:Lorg/spongycastle/asn1/ASN1Primitive;

.field private abg:Lorg/spongycastle/asn1/ASN1Primitive;

.field private sU:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 5

    .line 19
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 20
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/asn1/DERExternal;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;I)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 23
    instance-of v0, v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 25
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/asn1/DERExternal;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;I)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 29
    :cond_0
    instance-of v0, v3, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 31
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abe:Lorg/spongycastle/asn1/ASN1Integer;

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/asn1/DERExternal;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;I)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 35
    :cond_1
    instance-of v0, v3, Lorg/spongycastle/asn1/DERTaggedObject;

    if-nez v0, :cond_2

    .line 37
    iput-object v3, p0, Lorg/spongycastle/asn1/DERExternal;->abf:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/asn1/DERExternal;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;I)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 42
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    add-int/lit8 v1, v2, 0x1

    if-eq v0, v1, :cond_3

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input vector too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_3
    instance-of v0, v3, Lorg/spongycastle/asn1/DERTaggedObject;

    if-nez v0, :cond_4

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_4
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/asn1/DERTaggedObject;

    move-object v4, v0

    .line 52
    invoke-virtual {v4}, Lorg/spongycastle/asn1/DERTaggedObject;->eW()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERExternal;->т(I)V

    .line 53
    invoke-virtual {v4}, Lorg/spongycastle/asn1/DERTaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abg:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 54
    return-void
.end method

.method private ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;I)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 58
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few objects in input vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ʱ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method private т(I)V
    .locals 3

    .line 270
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    iput p1, p0, Lorg/spongycastle/asn1/DERExternal;->sU:I

    .line 275
    return-void
.end method


# virtual methods
.method ex()Z
    .locals 1

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method ey()I
    .locals 1

    .line 126
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERExternal;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public fg()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abf:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public fh()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public fi()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abg:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public fj()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abe:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getEncoding()I
    .locals 1

    .line 220
    iget v0, p0, Lorg/spongycastle/asn1/DERExternal;->sU:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 101
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v1

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abe:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abe:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abf:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abf:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 114
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abg:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 115
    return v1
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 5

    .line 135
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abe:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abe:Lorg/spongycastle/asn1/ASN1Integer;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 144
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abf:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abf:Lorg/spongycastle/asn1/ASN1Primitive;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 148
    :cond_2
    new-instance v4, Lorg/spongycastle/asn1/DERTaggedObject;

    iget v0, p0, Lorg/spongycastle/asn1/DERExternal;->sU:I

    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->abg:Lorg/spongycastle/asn1/ASN1Primitive;

    const/4 v2, 0x1

    invoke-direct {v4, v2, v0, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    const-string v0, "DER"

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/DERTaggedObject;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 150
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(II[B)V

    .line 151
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 158
    instance-of v0, p1, Lorg/spongycastle/asn1/DERExternal;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_0
    if-ne p0, p1, :cond_1

    .line 164
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/DERExternal;

    move-object v2, v0

    .line 167
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, v2, Lorg/spongycastle/asn1/DERExternal;->abd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lorg/spongycastle/asn1/DERExternal;->abd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->abd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 171
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 174
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abe:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_5

    .line 176
    iget-object v0, v2, Lorg/spongycastle/asn1/DERExternal;->abe:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lorg/spongycastle/asn1/DERExternal;->abe:Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->abe:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 178
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abf:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_7

    .line 183
    iget-object v0, v2, Lorg/spongycastle/asn1/DERExternal;->abf:Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lorg/spongycastle/asn1/DERExternal;->abf:Lorg/spongycastle/asn1/ASN1Primitive;

    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternal;->abf:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 185
    :cond_6
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/asn1/DERExternal;->abg:Lorg/spongycastle/asn1/ASN1Primitive;

    iget-object v1, v2, Lorg/spongycastle/asn1/DERExternal;->abg:Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
