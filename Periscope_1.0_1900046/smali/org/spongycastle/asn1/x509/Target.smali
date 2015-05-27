.class public Lorg/spongycastle/asn1/x509/Target;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private aAO:Lorg/spongycastle/asn1/x509/GeneralName;

.field private aAP:Lorg/spongycastle/asn1/x509/GeneralName;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 71
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ˌ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Target;->aAO:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 72
    goto :goto_1

    .line 74
    :sswitch_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/x509/GeneralName;->ˌ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Target;->aAP:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 75
    goto :goto_1

    .line 77
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public static ܝ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Target;
    .locals 3

    .line 47
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/Target;

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/Target;

    return-object v0

    .line 51
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    .line 53
    new-instance v0, Lorg/spongycastle/asn1/x509/Target;

    move-object v1, p0

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/Target;-><init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 129
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Target;->aAO:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/Target;->aAO:Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/Target;->aAP:Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public ic()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Target;->aAP:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public ie()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Target;->aAO:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object v0
.end method
