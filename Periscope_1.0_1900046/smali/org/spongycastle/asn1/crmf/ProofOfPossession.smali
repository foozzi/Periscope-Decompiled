.class public Lorg/spongycastle/asn1/crmf/ProofOfPossession;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private aaC:I

.field private aaF:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->aaC:I

    .line 62
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 63
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 106
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->aaC:I

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
