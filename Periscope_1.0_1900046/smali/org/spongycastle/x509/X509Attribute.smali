.class public Lorg/spongycastle/x509/X509Attribute;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field bkD:Lorg/spongycastle/asn1/x509/Attribute;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 26
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/Attribute;->ᕐ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Attribute;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/x509/X509Attribute;->bkD:Lorg/spongycastle/asn1/x509/Attribute;

    .line 27
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/spongycastle/x509/X509Attribute;->bkD:Lorg/spongycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Attribute;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public ts()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/x509/X509Attribute;->bkD:Lorg/spongycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Attribute;->gQ()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
