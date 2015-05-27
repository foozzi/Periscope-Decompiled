.class public interface abstract Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final awb:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final awd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.804.2.1.1.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->awb:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->awb:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.1.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->awc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->awb:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.1.1.1.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->awd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
