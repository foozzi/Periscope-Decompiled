.class public Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private agh:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->agg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    iput-object p2, p0, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->agh:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 43
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->agg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->agh:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 21
    return-void
.end method

.method public static ᑋ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .locals 2

    .line 25
    instance-of v0, p0, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    if-eqz v0, :cond_0

    .line 27
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    return-object v0

    .line 29
    :cond_0
    if-eqz p0, :cond_1

    .line 31
    new-instance v0, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null value in getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 65
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 67
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->agg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 68
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->agh:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 70
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public gF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->agg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public gG()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->agh:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method
