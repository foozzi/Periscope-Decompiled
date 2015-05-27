.class public abstract Lorg/spongycastle/asn1/ASN1Object;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eJ()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 70
    if-ne p0, p1, :cond_0

    .line 72
    const/4 v0, 0x1

    return v0

    .line 75
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_1

    .line 77
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    move-object v2, v0

    .line 82
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract ez()Lorg/spongycastle/asn1/ASN1Primitive;
.end method

.method public getEncoded()[B
    .locals 3

    .line 21
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 22
    new-instance v2, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    invoke-virtual {v2, p0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 3

    .line 40
    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    new-instance v2, Lorg/spongycastle/asn1/DEROutputStream;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    invoke-virtual {v2, p0}, Lorg/spongycastle/asn1/DEROutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    new-instance v2, Lorg/spongycastle/asn1/DLOutputStream;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    invoke-virtual {v2, p0}, Lorg/spongycastle/asn1/DLOutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v0

    return v0
.end method
