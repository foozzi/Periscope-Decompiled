.class public Lorg/spongycastle/asn1/DERGeneralString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private aas:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/spongycastle/asn1/DERGeneralString;->aas:[B

    .line 57
    return-void
.end method


# virtual methods
.method ex()Z
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/DERGeneralString;->aas:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERGeneralString;->aas:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/spongycastle/asn1/DERGeneralString;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ї([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/DERGeneralString;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/DERGeneralString;->aas:[B

    const/16 v1, 0x1b

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 93
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 102
    instance-of v0, p1, Lorg/spongycastle/asn1/DERGeneralString;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/DERGeneralString;

    move-object v2, v0

    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/DERGeneralString;->aas:[B

    iget-object v1, v2, Lorg/spongycastle/asn1/DERGeneralString;->aas:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method
