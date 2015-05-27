.class public interface abstract Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final agi:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final ahY:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final ahZ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aia:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aib:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aic:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final aid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;->agi:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 14
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113549.1.9.16"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;->ahY:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    sget-object v0, Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;->agi:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "48.4"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;->ahZ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    sget-object v0, Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;->agi:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3.10"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;->aia:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    sget-object v0, Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;->ahY:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.7"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;->aib:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;->ahY:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.8"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;->aic:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;->ahY:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.29"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/dvcs/DVCSObjectIdentifiers;->aid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
