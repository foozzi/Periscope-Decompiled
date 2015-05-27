.class Lo/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GX:Ljava/util/List;

.field final synthetic GY:Ljava/lang/String;

.field final synthetic GZ:Lo/ao;

.field final synthetic Ha:Lo/aq$if;


# direct methods
.method constructor <init>(Lo/aq$if;Ljava/util/List;Ljava/lang/String;Lo/ao;)V
    .locals 0

    iput-object p1, p0, Lo/ar;->Ha:Lo/aq$if;

    iput-object p2, p0, Lo/ar;->GX:Ljava/util/List;

    iput-object p3, p0, Lo/ar;->GY:Ljava/lang/String;

    iput-object p4, p0, Lo/ar;->GZ:Lo/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lo/ar;->Ha:Lo/aq$if;

    invoke-static {v0}, Lo/aq$if;->ˊ(Lo/aq$if;)Lo/ᒴ$ˎ;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lo/ar;->GX:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iget-object v0, p0, Lo/ar;->GY:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lo/ᒴ$ˎ;->ˊ(Ljava/lang/String;Ljava/util/Set;)Lo/ᒴ$ˎ$if;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzuw;

    invoke-virtual {v4}, Lo/ᒴ$ˎ$if;->ন()Z

    move-result v0

    invoke-virtual {v4}, Lo/ᒴ$ˎ$if;->প()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/internal/zzuw;-><init>(ZLjava/util/Set;)V

    iget-object v0, p0, Lo/ar;->GZ:Lo/ao;

    invoke-interface {v0, v5}, Lo/ao;->ˊ(Lcom/google/android/gms/internal/zzuw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v0, "SignInClientImpl"

    const-string v1, "RemoteException thrown when processing checkServerAuthorization callback"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
