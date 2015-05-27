.class public Lorg/spongycastle/pqc/jcajce/provider/Rainbow$Mappings;
.super Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/jcajce/provider/Rainbow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 7

    .line 22
    const-string v0, "KeyFactory.Rainbow"

    const-string v1, "org.spongycastle.pqc.jcajce.provider.rainbow.RainbowKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->ﹶ(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "KeyPairGenerator.Rainbow"

    const-string v1, "org.spongycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->ﹶ(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    move-object v0, p0

    move-object v1, p1

    const-string v2, "SHA224"

    const-string v3, "Rainbow"

    const-string v4, "org.spongycastle.pqc.jcajce.provider.rainbow.SignatureSpi$withSha224"

    sget-object v5, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->bdR:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/pqc/jcajce/provider/Rainbow$Mappings;->ˊ(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 26
    move-object v0, p0

    move-object v1, p1

    const-string v2, "SHA256"

    const-string v3, "Rainbow"

    const-string v4, "org.spongycastle.pqc.jcajce.provider.rainbow.SignatureSpi$withSha256"

    sget-object v5, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->bdS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/pqc/jcajce/provider/Rainbow$Mappings;->ˊ(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 27
    move-object v0, p0

    move-object v1, p1

    const-string v2, "SHA384"

    const-string v3, "Rainbow"

    const-string v4, "org.spongycastle.pqc.jcajce.provider.rainbow.SignatureSpi$withSha384"

    sget-object v5, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->bdT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/pqc/jcajce/provider/Rainbow$Mappings;->ˊ(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 28
    move-object v0, p0

    move-object v1, p1

    const-string v2, "SHA512"

    const-string v3, "Rainbow"

    const-string v4, "org.spongycastle.pqc.jcajce.provider.rainbow.SignatureSpi$withSha512"

    sget-object v5, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->bdU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/pqc/jcajce/provider/Rainbow$Mappings;->ˊ(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 30
    new-instance v6, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;

    invoke-direct {v6}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;-><init>()V

    .line 32
    sget-object v0, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->bdP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Rainbow"

    invoke-virtual {p0, p1, v0, v1, v6}, Lorg/spongycastle/pqc/jcajce/provider/Rainbow$Mappings;->ˊ(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 33
    sget-object v0, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->bdP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Rainbow"

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/pqc/jcajce/provider/Rainbow$Mappings;->ˋ(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 34
    return-void
.end method
