.class public Lorg/spongycastle/asn1/x509/AttCertIssuer;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field aaF:Lorg/spongycastle/asn1/ASN1Encodable;

.field axZ:Lorg/spongycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralNames;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 62
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->axZ:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/V2Form;)V
    .locals 4

    .line 67
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 69
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->axZ:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 70
    return-void
.end method

.method public static ᓫ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttCertIssuer;
    .locals 3

    .line 21
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/AttCertIssuer;

    return-object v0

    .line 25
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_2

    .line 27
    new-instance v0, Lorg/spongycastle/asn1/x509/AttCertIssuer;

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/V2Form;->ᓒ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/V2Form;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AttCertIssuer;-><init>(Lorg/spongycastle/asn1/x509/V2Form;)V

    return-object v0

    .line 29
    :cond_2
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_3

    .line 31
    new-instance v0, Lorg/spongycastle/asn1/x509/AttCertIssuer;

    move-object v1, p0

    check-cast v1, Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AttCertIssuer;-><init>(Lorg/spongycastle/asn1/x509/GeneralNames;)V

    return-object v0

    .line 33
    :cond_3
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_4

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/x509/AttCertIssuer;

    move-object v1, p0

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/spongycastle/asn1/x509/V2Form;->ᐧ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/V2Form;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AttCertIssuer;-><init>(Lorg/spongycastle/asn1/x509/V2Form;)V

    return-object v0

    .line 37
    :cond_4
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_5

    .line 39
    new-instance v0, Lorg/spongycastle/asn1/x509/AttCertIssuer;

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/GeneralNames;->＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AttCertIssuer;-><init>(Lorg/spongycastle/asn1/x509/GeneralNames;)V

    return-object v0

    .line 42
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->axZ:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public gN()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->aaF:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method
