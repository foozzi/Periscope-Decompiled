.class public Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 19
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 20
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 25
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    return-void
.end method

.method public static ᵄ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 2

    .line 30
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    return-object v0

    .line 34
    :cond_0
    if-eqz p0, :cond_1

    .line 36
    new-instance v0, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public fL()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
