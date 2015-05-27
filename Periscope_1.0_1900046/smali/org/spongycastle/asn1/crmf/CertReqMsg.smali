.class public Lorg/spongycastle/asn1/crmf/CertReqMsg;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agp:Lorg/spongycastle/asn1/crmf/CertRequest;

.field private agq:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

.field private agr:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 140
    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 128
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 130
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->agp:Lorg/spongycastle/asn1/crmf/CertRequest;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 132
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->agq:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 133
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->agr:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 135
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
