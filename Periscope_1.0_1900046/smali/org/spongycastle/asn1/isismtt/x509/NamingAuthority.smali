.class public Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field public static final amR:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private amS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private amT:Ljava/lang/String;

.field private amU:Lorg/spongycastle/asn1/x500/DirectoryString;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/spongycastle/asn1/isismtt/ISISMTTObjectIdentifiers;->amy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->amR:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 209
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 210
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->amS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->amS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->amT:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Lorg/spongycastle/asn1/DERIA5String;

    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->amT:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 218
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->amU:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;->amU:Lorg/spongycastle/asn1/x500/DirectoryString;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 222
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
