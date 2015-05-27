.class public Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field ahD:Lorg/spongycastle/asn1/ASN1OctetString;

.field aqi:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->ahD:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->aqi:Lorg/spongycastle/asn1/ASN1Integer;

    .line 33
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 23
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 24
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->ahD:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 25
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->aqi:Lorg/spongycastle/asn1/ASN1Integer;

    .line 26
    return-void
.end method

.method public static וֹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    .locals 2

    .line 38
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    return-object v0

    .line 42
    :cond_0
    if-eqz p0, :cond_1

    .line 44
    new-instance v0, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 47
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 62
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 64
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->ahD:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 65
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->aqi:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 67
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fT()Ljava/math/BigInteger;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->aqi:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->ahD:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    return-object v0
.end method
