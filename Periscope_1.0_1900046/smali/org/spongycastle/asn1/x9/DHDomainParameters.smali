.class public Lorg/spongycastle/asn1/x9/DHDomainParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aCP:Lorg/spongycastle/asn1/ASN1Integer;

.field private aCQ:Lorg/spongycastle/asn1/x9/DHValidationParms;

.field private ahx:Lorg/spongycastle/asn1/ASN1Integer;

.field private ahy:Lorg/spongycastle/asn1/ASN1Integer;

.field private apD:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 89
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 92
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

    .line 95
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v3

    .line 96
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    .line 97
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->apD:Lorg/spongycastle/asn1/ASN1Integer;

    .line 98
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ahy:Lorg/spongycastle/asn1/ASN1Integer;

    .line 100
    invoke-static {v3}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ˊ(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 102
    if-eqz v4, :cond_2

    instance-of v0, v4, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_2

    .line 104
    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->aCP:Lorg/spongycastle/asn1/ASN1Integer;

    .line 105
    invoke-static {v3}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ˊ(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 108
    :cond_2
    if-eqz v4, :cond_3

    .line 110
    invoke-interface {v4}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/DHValidationParms;->ᵏ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHValidationParms;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->aCQ:Lorg/spongycastle/asn1/x9/DHValidationParms;

    .line 112
    :cond_3
    return-void
.end method

.method private static ˊ(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 116
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static ᴊ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHDomainParameters;
    .locals 3

    .line 28
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x9/DHDomainParameters;

    return-object v0

    .line 33
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/x9/DHDomainParameters;

    move-object v1, p0

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/DHDomainParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 38
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DHDomainParameters: "

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
    .locals 2

    .line 146
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 147
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->apD:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ahy:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->aCP:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->aCP:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->aCQ:Lorg/spongycastle/asn1/x9/DHValidationParms;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->aCQ:Lorg/spongycastle/asn1/x9/DHValidationParms;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public ij()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public ik()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->apD:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public il()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ahy:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public im()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->aCP:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public io()Lorg/spongycastle/asn1/x9/DHValidationParms;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->aCQ:Lorg/spongycastle/asn1/x9/DHValidationParms;

    return-object v0
.end method
