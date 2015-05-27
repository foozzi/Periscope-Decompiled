.class public Lorg/spongycastle/asn1/dvcs/ServiceType;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field public static final aiw:Lorg/spongycastle/asn1/dvcs/ServiceType;

.field public static final aix:Lorg/spongycastle/asn1/dvcs/ServiceType;

.field public static final aiy:Lorg/spongycastle/asn1/dvcs/ServiceType;

.field public static final aiz:Lorg/spongycastle/asn1/dvcs/ServiceType;


# instance fields
.field private aiA:Lorg/spongycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lorg/spongycastle/asn1/dvcs/ServiceType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/ServiceType;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/dvcs/ServiceType;->aiw:Lorg/spongycastle/asn1/dvcs/ServiceType;

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/dvcs/ServiceType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/ServiceType;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/dvcs/ServiceType;->aix:Lorg/spongycastle/asn1/dvcs/ServiceType;

    .line 31
    new-instance v0, Lorg/spongycastle/asn1/dvcs/ServiceType;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/ServiceType;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/dvcs/ServiceType;->aiy:Lorg/spongycastle/asn1/dvcs/ServiceType;

    .line 36
    new-instance v0, Lorg/spongycastle/asn1/dvcs/ServiceType;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/ServiceType;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/dvcs/ServiceType;->aiz:Lorg/spongycastle/asn1/dvcs/ServiceType;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 42
    new-instance v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/ServiceType;->aiA:Lorg/spongycastle/asn1/ASN1Enumerated;

    .line 43
    return-void
.end method


# virtual methods
.method public eA()Ljava/math/BigInteger;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/ServiceType;->aiA:Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/ServiceType;->aiA:Lorg/spongycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/ServiceType;->aiA:Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/dvcs/ServiceType;->aiw:Lorg/spongycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/dvcs/ServiceType;->eA()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_0

    const-string v1, "(CPD)"

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/spongycastle/asn1/dvcs/ServiceType;->aix:Lorg/spongycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/dvcs/ServiceType;->eA()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_1

    const-string v1, "(VSD)"

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/spongycastle/asn1/dvcs/ServiceType;->aiy:Lorg/spongycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/dvcs/ServiceType;->eA()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_2

    const-string v1, "(VPKC)"

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/spongycastle/asn1/dvcs/ServiceType;->aiz:Lorg/spongycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/dvcs/ServiceType;->eA()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_3

    const-string v1, "(CCPD)"

    goto :goto_0

    :cond_3
    const-string v1, "?"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
