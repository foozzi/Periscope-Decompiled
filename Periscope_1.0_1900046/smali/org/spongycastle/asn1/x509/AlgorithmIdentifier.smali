.class public Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aqj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private auI:Lorg/spongycastle/asn1/ASN1Encodable;

.field private axY:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->axY:Z

    .line 63
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->aqj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->axY:Z

    .line 53
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->aqj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->axY:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->axY:Z

    .line 71
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->aqj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->auI:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->axY:Z

    .line 82
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->aqj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 90
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->axY:Z

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->auI:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->auI:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 99
    :goto_0
    return-void
.end method

.method public static ʿ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 24
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    .line 30
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0

    .line 36
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_2

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-object v1, p0

    check-cast v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v0

    .line 42
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 44
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 47
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 130
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 132
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->aqj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 134
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->axY:Z

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->auI:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->auI:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 142
    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 146
    :cond_1
    :goto_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    .line 103
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->aqj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public fL()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->auI:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public fO()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->aqj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
