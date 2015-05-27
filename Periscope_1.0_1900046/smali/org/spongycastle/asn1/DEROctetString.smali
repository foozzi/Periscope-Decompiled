.class public Lorg/spongycastle/asn1/DEROctetString;
.super Lorg/spongycastle/asn1/ASN1OctetString;
.source ""


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 15
    return-void
.end method

.method static ˊ(Lorg/spongycastle/asn1/DEROutputStream;[B)V
    .locals 1

    .line 46
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/asn1/DEROutputStream;->ˊ(I[B)V

    .line 47
    return-void
.end method


# virtual methods
.method ex()Z
    .locals 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 2

    .line 31
    iget-object v0, p0, Lorg/spongycastle/asn1/DEROctetString;->aas:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DEROctetString;->aas:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/spongycastle/asn1/DEROctetString;->aas:[B

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 39
    return-void
.end method
