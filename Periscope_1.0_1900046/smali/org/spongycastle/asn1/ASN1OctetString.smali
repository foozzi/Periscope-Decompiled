.class public abstract Lorg/spongycastle/asn1/ASN1OctetString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1OctetStringParser;


# instance fields
.field aas:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 173
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 174
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1OctetString;->aas:[B

    .line 179
    return-void
.end method

.method public static ˏ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 2

    .line 119
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 121
    if-nez p1, :cond_0

    instance-of v0, v1, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0

    .line 127
    :cond_1
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/BEROctetString;->ˊ(Lorg/spongycastle/asn1/ASN1Sequence;)Lorg/spongycastle/asn1/BEROctetString;

    move-result-object v0

    return-object v0
.end method

.method public static ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 4

    .line 140
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0

    .line 144
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 148
    move-object v0, p0

    :try_start_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 150
    :catch_0
    move-exception v3

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct OCTET STRING from byte[]: "

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

    .line 155
    :cond_2
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_3

    .line 157
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 159
    instance-of v0, v3, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_3

    .line 161
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0

    .line 165
    :cond_3
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
.method public eL()Ljava/io/InputStream;
    .locals 2

    .line 188
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1OctetString;->aas:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public eM()[B
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->aas:[B

    return-object v0
.end method

.method public eN()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method eO()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 236
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1OctetString;->aas:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method eP()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 241
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1OctetString;->aas:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 213
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1OctetString;->aas:[B

    invoke-static {v2}, Lorg/spongycastle/util/encoders/Hex;->ײ([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 219
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    return v0

    .line 224
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object v2, v0

    .line 226
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1OctetString;->aas:[B

    iget-object v1, v2, Lorg/spongycastle/asn1/ASN1OctetString;->aas:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method
