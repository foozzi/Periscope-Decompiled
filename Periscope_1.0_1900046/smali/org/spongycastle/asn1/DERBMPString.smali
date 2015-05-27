.class public Lorg/spongycastle/asn1/DERBMPString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private aba:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERBMPString;->aba:[C

    .line 102
    return-void
.end method

.method constructor <init>([C)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/spongycastle/asn1/DERBMPString;->aba:[C

    .line 92
    return-void
.end method


# virtual methods
.method ex()Z
    .locals 1

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 3

    .line 139
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBMPString;->aba:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERBMPString;->aba:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/spongycastle/asn1/DERBMPString;->aba:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBMPString;->aba:[C

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 4

    .line 146
    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 147
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBMPString;->aba:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->Ί(I)V

    .line 149
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBMPString;->aba:[C

    array-length v0, v0

    if-eq v2, v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBMPString;->aba:[C

    aget-char v3, v0, v2

    .line 153
    shr-int/lit8 v0, v3, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 154
    int-to-byte v0, v3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 122
    instance-of v0, p1, Lorg/spongycastle/asn1/DERBMPString;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/DERBMPString;

    move-object v2, v0

    .line 129
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBMPString;->aba:[C

    iget-object v1, v2, Lorg/spongycastle/asn1/DERBMPString;->aba:[C

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ˊ([C[C)Z

    move-result v0

    return v0
.end method
