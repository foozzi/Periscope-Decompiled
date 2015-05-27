.class public Lorg/spongycastle/x509/X509Store;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/util/Store;


# instance fields
.field private bkX:Ljava/security/Provider;

.field private bkY:Lorg/spongycastle/x509/X509StoreSpi;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Lorg/spongycastle/x509/X509StoreSpi;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/spongycastle/x509/X509Store;->bkX:Ljava/security/Provider;

    .line 70
    iput-object p2, p0, Lorg/spongycastle/x509/X509Store;->bkY:Lorg/spongycastle/x509/X509StoreSpi;

    .line 71
    return-void
.end method

.method public static ˊ(Ljava/lang/String;Lorg/spongycastle/x509/X509StoreParameters;Ljava/lang/String;)Lorg/spongycastle/x509/X509Store;
    .locals 1

    .line 35
    invoke-static {p2}, Lorg/spongycastle/x509/X509Util;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/spongycastle/x509/X509Store;->ˊ(Ljava/lang/String;Lorg/spongycastle/x509/X509StoreParameters;Ljava/security/Provider;)Lorg/spongycastle/x509/X509Store;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Ljava/lang/String;Lorg/spongycastle/x509/X509StoreParameters;Ljava/security/Provider;)Lorg/spongycastle/x509/X509Store;
    .locals 3

    .line 43
    const-string v0, "X509Store"

    :try_start_0
    invoke-static {v0, p0, p2}, Lorg/spongycastle/x509/X509Util;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lorg/spongycastle/x509/X509Util$Implementation;

    move-result-object v2

    .line 45
    invoke-static {v2, p1}, Lorg/spongycastle/x509/X509Store;->ˊ(Lorg/spongycastle/x509/X509Util$Implementation;Lorg/spongycastle/x509/X509StoreParameters;)Lorg/spongycastle/x509/X509Store;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 47
    :catch_0
    move-exception v2

    .line 49
    new-instance v0, Lorg/spongycastle/x509/NoSuchStoreException;

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/NoSuchStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ˊ(Lorg/spongycastle/x509/X509Util$Implementation;Lorg/spongycastle/x509/X509StoreParameters;)Lorg/spongycastle/x509/X509Store;
    .locals 3

    .line 55
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509Util$Implementation;->tG()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/X509StoreSpi;

    move-object v2, v0

    .line 57
    invoke-virtual {v2, p1}, Lorg/spongycastle/x509/X509StoreSpi;->ˊ(Lorg/spongycastle/x509/X509StoreParameters;)V

    .line 59
    new-instance v0, Lorg/spongycastle/x509/X509Store;

    invoke-virtual {p0}, Lorg/spongycastle/x509/X509Util$Implementation;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/x509/X509Store;-><init>(Ljava/security/Provider;Lorg/spongycastle/x509/X509StoreSpi;)V

    return-object v0
.end method


# virtual methods
.method public ˋ(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/spongycastle/x509/X509Store;->bkY:Lorg/spongycastle/x509/X509StoreSpi;

    invoke-virtual {v0, p1}, Lorg/spongycastle/x509/X509StoreSpi;->ˊ(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
