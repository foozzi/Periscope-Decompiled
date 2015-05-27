.class public Lorg/spongycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field ahA:Lorg/spongycastle/asn1/ASN1Integer;

.field ahB:Lorg/spongycastle/asn1/ASN1Integer;

.field ahC:Lorg/spongycastle/asn1/ASN1Integer;

.field ahx:Lorg/spongycastle/asn1/ASN1Integer;

.field ahy:Lorg/spongycastle/asn1/ASN1Integer;

.field ahz:Lorg/spongycastle/asn1/ASN1Integer;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 88
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;->ahz:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;->ahA:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;->ahy:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;->ahB:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;->ahC:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 97
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
