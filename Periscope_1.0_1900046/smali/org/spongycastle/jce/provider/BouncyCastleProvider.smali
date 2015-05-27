.class public final Lorg/spongycastle/jce/provider/BouncyCastleProvider;
.super Ljava/security/Provider;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;


# static fields
.field public static final baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

.field private static final baD:Ljava/util/Map;

.field private static final baE:[Ljava/lang/String;

.field private static final baF:[Ljava/lang/String;

.field private static final baG:[Ljava/lang/String;

.field private static final baH:[Ljava/lang/String;

.field private static final baI:[Ljava/lang/String;

.field private static final baJ:[Ljava/lang/String;

.field private static final baK:[Ljava/lang/String;

.field private static info:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-string v0, "BouncyCastle Security Provider v1.51"

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    .line 51
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProviderConfiguration;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baD:Ljava/util/Map;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PBEPBKDF2"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PBEPKCS12"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baE:[Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SipHash"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baF:[Ljava/lang/String;

    .line 70
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AES"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ARC4"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Blowfish"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Camellia"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "CAST5"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "CAST6"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ChaCha"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "DES"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "DESede"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "GOST28147"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Grainv1"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Grain128"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "HC128"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "HC256"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "IDEA"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "Noekeon"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "RC2"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "RC5"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "RC6"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "Rijndael"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "Salsa20"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "SEED"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "Serpent"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "Shacal2"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "Skipjack"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "TEA"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "Twofish"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "Threefish"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "VMPC"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "VMPCKSA3"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "XTEA"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "XSalsa20"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baG:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "X509"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "IES"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baH:[Ljava/lang/String;

    .line 90
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DSA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DH"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "EC"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "RSA"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "GOST"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ECGOST"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ElGamal"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "DSTU4145"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baI:[Ljava/lang/String;

    .line 99
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GOST3411"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MD2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "MD4"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "MD5"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "SHA1"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "RIPEMD128"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "RIPEMD160"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "RIPEMD256"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "RIPEMD320"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "SHA224"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "SHA256"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "SHA384"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "SHA512"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "SHA3"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "Skein"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "SM3"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "Tiger"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "Whirlpool"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baJ:[Ljava/lang/String;

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BC"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PKCS12"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baK:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 120
    const-string v0, "SC"

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    const-wide v2, 0x3ff828f5c28f5c29L    # 1.51

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 122
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider$1;-><init>(Lorg/spongycastle/jce/provider/BouncyCastleProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method private setup()V
    .locals 2

    .line 134
    const-string v0, "org.spongycastle.jcajce.provider.digest."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baJ:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˊ(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    const-string v0, "org.spongycastle.jcajce.provider.symmetric."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baE:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˊ(Ljava/lang/String;[Ljava/lang/String;)V

    .line 138
    const-string v0, "org.spongycastle.jcajce.provider.symmetric."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baF:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˊ(Ljava/lang/String;[Ljava/lang/String;)V

    .line 140
    const-string v0, "org.spongycastle.jcajce.provider.symmetric."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baG:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˊ(Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    const-string v0, "org.spongycastle.jcajce.provider.asymmetric."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baH:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˊ(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    const-string v0, "org.spongycastle.jcajce.provider.asymmetric."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baI:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˊ(Ljava/lang/String;[Ljava/lang/String;)V

    .line 146
    const-string v0, "org.spongycastle.jcajce.provider.keystore."

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baK:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˊ(Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    const-string v0, "X509Store.CERTIFICATE/COLLECTION"

    const-string v1, "org.spongycastle.jce.provider.X509StoreCertCollection"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/COLLECTION"

    const-string v1, "org.spongycastle.jce.provider.X509StoreAttrCertCollection"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "X509Store.CRL/COLLECTION"

    const-string v1, "org.spongycastle.jce.provider.X509StoreCRLCollection"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "X509Store.CERTIFICATEPAIR/COLLECTION"

    const-string v1, "org.spongycastle.jce.provider.X509StoreCertPairCollection"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "X509Store.CERTIFICATE/LDAP"

    const-string v1, "org.spongycastle.jce.provider.X509StoreLDAPCerts"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "X509Store.CRL/LDAP"

    const-string v1, "org.spongycastle.jce.provider.X509StoreLDAPCRLs"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/LDAP"

    const-string v1, "org.spongycastle.jce.provider.X509StoreLDAPAttrCerts"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "X509Store.CERTIFICATEPAIR/LDAP"

    const-string v1, "org.spongycastle.jce.provider.X509StoreLDAPCertPairs"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v0, "X509StreamParser.CERTIFICATE"

    const-string v1, "org.spongycastle.jce.provider.X509CertParser"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "X509StreamParser.ATTRIBUTECERTIFICATE"

    const-string v1, "org.spongycastle.jce.provider.X509AttrCertParser"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "X509StreamParser.CRL"

    const-string v1, "org.spongycastle.jce.provider.X509CRLParser"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "X509StreamParser.CERTIFICATEPAIR"

    const-string v1, "org.spongycastle.jce.provider.X509CertPairParser"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "Cipher.BROKENPBEWITHMD5ANDDES"

    const-string v1, "org.spongycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "Cipher.BROKENPBEWITHSHA1ANDDES"

    const-string v1, "org.spongycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "Cipher.OLDPBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "org.spongycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "CertPathValidator.RFC3281"

    const-string v1, "org.spongycastle.jce.provider.PKIXAttrCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "CertPathBuilder.RFC3281"

    const-string v1, "org.spongycastle.jce.provider.PKIXAttrCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "CertPathValidator.RFC3280"

    const-string v1, "org.spongycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "CertPathBuilder.RFC3280"

    const-string v1, "org.spongycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "CertPathValidator.PKIX"

    const-string v1, "org.spongycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "CertPathBuilder.PKIX"

    const-string v1, "org.spongycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "CertStore.Collection"

    const-string v1, "org.spongycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "CertStore.LDAP"

    const-string v1, "org.spongycastle.jce.provider.X509LDAPCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "CertStore.Multi"

    const-string v1, "org.spongycastle.jce.provider.MultiCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "Alg.Alias.CertStore.X509LDAP"

    const-string v1, "LDAP"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public static ʼ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 3

    .line 261
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baD:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-object v2, v0

    .line 263
    if-nez v2, :cond_0

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_0
    invoke-interface {v2, p0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->ˋ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 194
    const/4 v3, 0x0

    :goto_0
    array-length v0, p2

    if-eq v3, v0, :cond_2

    .line 196
    const/4 v4, 0x0

    .line 199
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 201
    if-eqz v5, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Mappings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Mappings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 213
    :goto_1
    goto :goto_2

    .line 210
    :catch_0
    move-exception v5

    .line 215
    :goto_2
    if-eqz v4, :cond_1

    .line 219
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/util/AlgorithmProvider;

    invoke-virtual {v0, p0}, Lorg/spongycastle/jcajce/provider/util/AlgorithmProvider;->ˊ(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    goto :goto_3

    .line 221
    :catch_1
    move-exception v5

    .line 223
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$Mappings : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 228
    :cond_2
    return-void
.end method

.method static synthetic ˊ(Lorg/spongycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->setup()V

    return-void
.end method

.method public static ˏ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 3

    .line 274
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baD:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fW()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-object v2, v0

    .line 276
    if-nez v2, :cond_0

    .line 278
    const/4 v0, 0x0

    return-object v0

    .line 281
    :cond_0
    invoke-interface {v2, p0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->ˊ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .locals 1

    .line 255
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baD:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method public ﹶ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 245
    invoke-virtual {p0, p1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate provider key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method public ﹺ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
