.class public Lorg/spongycastle/asn1/x509/Extensions;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private azo:Ljava/util/Hashtable;

.field private azp:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->azo:Ljava/util/Hashtable;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->azp:Ljava/util/Vector;

    .line 52
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v2

    .line 54
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Extension;->ﹰ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v3

    .line 58
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->azo:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/Extension;->hx()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->azp:Ljava/util/Vector;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/Extension;->hx()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public static ﺗ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;
    .locals 2

    .line 32
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0

    .line 36
    :cond_0
    if-eqz p0, :cond_1

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/x509/Extensions;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/Extensions;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 41
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 142
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 143
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->azp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 145
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v3, v0

    .line 148
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->azo:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x509/Extension;

    move-object v4, v0

    .line 150
    invoke-virtual {v1, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public hA()Ljava/util/Enumeration;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->azp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->azo:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x509/Extension;

    return-object v0
.end method

.method public ʼ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 2

    .line 120
    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/x509/Extensions;->ʻ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Extension;->hz()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
