.class public Lorg/spongycastle/asn1/pkcs/Pfx;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private asI:Lorg/spongycastle/asn1/pkcs/ContentInfo;

.field private asJ:Lorg/spongycastle/asn1/pkcs/MacData;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->asJ:Lorg/spongycastle/asn1/pkcs/MacData;

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong version for PFX PDU"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->ᔋ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->asI:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    .line 33
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/MacData;->ᵞ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/MacData;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->asJ:Lorg/spongycastle/asn1/pkcs/MacData;

    .line 37
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/ContentInfo;Lorg/spongycastle/asn1/pkcs/MacData;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->asJ:Lorg/spongycastle/asn1/pkcs/MacData;

    .line 59
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->asI:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    .line 60
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->asJ:Lorg/spongycastle/asn1/pkcs/MacData;

    .line 61
    return-void
.end method

.method public static ﹲ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/Pfx;
    .locals 2

    .line 42
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/Pfx;

    return-object v0

    .line 47
    :cond_0
    if-eqz p0, :cond_1

    .line 49
    new-instance v0, Lorg/spongycastle/asn1/pkcs/Pfx;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/Pfx;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 52
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 75
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 77
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 78
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->asI:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->asJ:Lorg/spongycastle/asn1/pkcs/MacData;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->asJ:Lorg/spongycastle/asn1/pkcs/MacData;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 85
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fU()Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->asI:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method

.method public fV()Lorg/spongycastle/asn1/pkcs/MacData;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->asJ:Lorg/spongycastle/asn1/pkcs/MacData;

    return-object v0
.end method
