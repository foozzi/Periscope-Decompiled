.class public Lorg/spongycastle/asn1/oiw/ElGamalParameter;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field ahx:Lorg/spongycastle/asn1/ASN1Integer;

.field apD:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 22
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    .line 23
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->apD:Lorg/spongycastle/asn1/ASN1Integer;

    .line 24
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    .line 32
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->apD:Lorg/spongycastle/asn1/ASN1Integer;

    .line 33
    return-void
.end method

.method public static ᔅ(Ljava/lang/Object;)Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    .locals 2

    .line 37
    instance-of v0, p0, Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    return-object v0

    .line 41
    :cond_0
    if-eqz p0, :cond_1

    .line 43
    new-instance v0, Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 61
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 63
    iget-object v0, p0, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 64
    iget-object v0, p0, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->apD:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 66
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->apD:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eI()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eI()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
