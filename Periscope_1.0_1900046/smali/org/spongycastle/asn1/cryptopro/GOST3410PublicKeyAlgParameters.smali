.class public Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ahJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private ahK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private ahL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    iput-object p2, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    iput-object p2, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    iput-object p3, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 69
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 71
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    :cond_0
    return-void
.end method

.method public static ˤ(Ljava/lang/Object;)Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;
    .locals 2

    .line 28
    instance-of v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    return-object v0

    .line 33
    :cond_0
    if-eqz p0, :cond_1

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 92
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 102
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fp()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public fq()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public fr()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ahK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
