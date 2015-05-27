.class public Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field ahI:I

.field ahx:Lorg/spongycastle/asn1/ASN1Integer;

.field ahy:Lorg/spongycastle/asn1/ASN1Integer;

.field ahz:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 49
    iput p1, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->ahI:I

    .line 50
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    .line 51
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->ahy:Lorg/spongycastle/asn1/ASN1Integer;

    .line 52
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p4}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->ahz:Lorg/spongycastle/asn1/ASN1Integer;

    .line 53
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 96
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 98
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->ahI:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->ahy:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->ahz:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public getA()Ljava/math/BigInteger;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->ahz:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eI()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eI()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->ahy:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eI()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
