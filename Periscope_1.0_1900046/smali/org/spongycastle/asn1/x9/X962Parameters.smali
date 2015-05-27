.class public Lorg/spongycastle/asn1/x9/X962Parameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private aDv:Lorg/spongycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->aDv:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 48
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->aDv:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Primitive;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->aDv:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 54
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->aDv:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->aDv:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 42
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->aDv:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 43
    return-void
.end method

.method public static ⅼ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X962Parameters;
    .locals 2

    .line 19
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x9/X962Parameters;

    return-object v0

    .line 24
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_2

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/x9/X962Parameters;

    move-object v1, p0

    check-cast v1, Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->aDv:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public gA()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->aDv:Lorg/spongycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return v0
.end method

.method public is()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->aDv:Lorg/spongycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Null;

    return v0
.end method

.method public it()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X962Parameters;->aDv:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method
