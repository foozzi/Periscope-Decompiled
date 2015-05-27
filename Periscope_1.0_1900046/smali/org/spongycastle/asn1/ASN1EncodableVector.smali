.class public Lorg/spongycastle/asn1/ASN1EncodableVector;
.super Ljava/lang/Object;
.source ""


# instance fields
.field aaj:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1EncodableVector;->aaj:Ljava/util/Vector;

    .line 18
    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1EncodableVector;->aaj:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public ʱ(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1EncodableVector;->aaj:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1EncodableVector;->aaj:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 28
    return-void
.end method
