.class public Lorg/spongycastle/asn1/DERVisibleString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private aas:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/spongycastle/asn1/DERVisibleString;->aas:[B

    .line 83
    return-void
.end method


# virtual methods
.method ex()Z
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/DERVisibleString;->aas:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERVisibleString;->aas:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/DERVisibleString;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ї([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/spongycastle/asn1/DERVisibleString;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERVisibleString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/DERVisibleString;->aas:[B

    const/16 v1, 0x1a

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 124
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 2

    .line 129
    instance-of v0, p1, Lorg/spongycastle/asn1/DERVisibleString;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DERVisibleString;->aas:[B

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/asn1/DERVisibleString;

    iget-object v1, v1, Lorg/spongycastle/asn1/DERVisibleString;->aas:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method