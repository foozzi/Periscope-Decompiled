.class public abstract Lo/ヾ;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ᒰ$ˊ;
.implements Lo/乀$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ヾ$ˎ;,
        Lo/ヾ$if;,
        Lo/ヾ$aux;,
        Lo/ヾ$ʻ;,
        Lo/ヾ$ᐝ;,
        Lo/ヾ$ˋ;,
        Lo/ヾ$ˊ;,
        Lo/ヾ$ˏ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::Landroid/os/IInterface;>Ljava/lang/Object;Lo/\u14b0$\u02ca;Lo/\u4e40$if;"
    }
.end annotation


# static fields
.field public static final Ek:[Ljava/lang/String;


# instance fields
.field private final CD:Lo/乀;

.field private final CV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final Cc:Landroid/accounts/Account;

.field private final Cn:Landroid/os/Looper;

.field private final DY:Lo/ぃ;

.field private final DZ:Lo/宀;

.field private final Ea:Ljava/lang/Object;

.field private Eb:Lo/ﭞ;

.field private Ec:Z

.field private Ed:Lo/ᒴ$ˏ;

.field private Ee:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final Ef:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u30fe<TT;>.\u02cb<*>;>;"
        }
    .end annotation
.end field

.field private Eg:Lo/ヾ$ˏ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u30fe<TT;>.\u02cf;"
        }
    .end annotation
.end field

.field private Eh:I

.field Ei:Z

.field private final Ej:I

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "service_esmobile"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "service_googleme"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/ヾ;->Ek:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILo/ᒴ$ˊ;Lo/ᒴ$ˋ;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/ヾ;->Ea:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ヾ;->Ec:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ヾ;->Ef:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lo/ヾ;->Eh:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ヾ;->Ei:Z

    invoke-static {p1}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lo/ヾ;->mContext:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lo/ヾ;->Cn:Landroid/os/Looper;

    invoke-static {p1}, Lo/宀;->ᵢ(Landroid/content/Context;)Lo/宀;

    move-result-object v0

    iput-object v0, p0, Lo/ヾ;->DZ:Lo/宀;

    new-instance v0, Lo/乀;

    invoke-direct {v0, p2, p0}, Lo/乀;-><init>(Landroid/os/Looper;Lo/乀$if;)V

    iput-object v0, p0, Lo/ヾ;->CD:Lo/乀;

    new-instance v0, Lo/ヾ$ˊ;

    invoke-direct {v0, p0, p2}, Lo/ヾ$ˊ;-><init>(Lo/ヾ;Landroid/os/Looper;)V

    iput-object v0, p0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    iput p3, p0, Lo/ヾ;->Ej:I

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ヾ;->Cc:Landroid/accounts/Account;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ヾ;->CV:Ljava/util/List;

    new-instance v0, Lo/ᒴ$if;

    invoke-direct {v0, p1}, Lo/ᒴ$if;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lo/ᒴ$if;->ও()Lo/ぃ;

    move-result-object v0

    iput-object v0, p0, Lo/ヾ;->DY:Lo/ぃ;

    invoke-static {p4}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒴ$ˊ;

    invoke-virtual {p0, v0}, Lo/ヾ;->ˊ(Lo/ᒴ$ˊ;)V

    invoke-static {p5}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒴ$ˋ;

    invoke-virtual {p0, v0}, Lo/ヾ;->ˊ(Lo/ᒴ$ˋ;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILo/ᒴ$ˊ;Lo/ᒴ$ˋ;Lo/ぃ;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {p1}, Lo/宀;->ᵢ(Landroid/content/Context;)Lo/宀;

    move-result-object v3

    move v4, p3

    move-object v5, p6

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lo/ヾ;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/宀;ILo/ぃ;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/宀;ILo/ぃ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/ヾ;->Ea:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ヾ;->Ec:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ヾ;->Ef:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lo/ヾ;->Eh:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ヾ;->Ei:Z

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lo/ヾ;->mContext:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lo/ヾ;->Cn:Landroid/os/Looper;

    const-string v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/宀;

    iput-object v0, p0, Lo/ヾ;->DZ:Lo/宀;

    new-instance v0, Lo/乀;

    invoke-direct {v0, p2, p0}, Lo/乀;-><init>(Landroid/os/Looper;Lo/乀$if;)V

    iput-object v0, p0, Lo/ヾ;->CD:Lo/乀;

    new-instance v0, Lo/ヾ$ˊ;

    invoke-direct {v0, p0, p2}, Lo/ヾ$ˊ;-><init>(Lo/ヾ;Landroid/os/Looper;)V

    iput-object v0, p0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    iput p4, p0, Lo/ヾ;->Ej:I

    invoke-static {p5}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ぃ;

    iput-object v0, p0, Lo/ヾ;->DY:Lo/ぃ;

    invoke-virtual {p5}, Lo/ぃ;->ᒱ()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lo/ヾ;->Cc:Landroid/accounts/Account;

    invoke-virtual {p5}, Lo/ぃ;->ᖽ()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ヾ;->ͺ(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/ヾ;->CV:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/宀;ILo/ぃ;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lo/ヾ;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/宀;ILo/ぃ;)V

    invoke-static {p6}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒴ$ˊ;

    invoke-virtual {p0, v0}, Lo/ヾ;->ˊ(Lo/ᒴ$ˊ;)V

    invoke-static {p7}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒴ$ˋ;

    invoke-virtual {p0, v0}, Lo/ヾ;->ˊ(Lo/ᒴ$ˋ;)V

    return-void
.end method

.method static synthetic ʻ(Lo/ヾ;)Lo/ヾ$ˏ;
    .locals 1

    iget-object v0, p0, Lo/ヾ;->Eg:Lo/ヾ$ˏ;

    return-object v0
.end method

.method static synthetic ʼ(Lo/ヾ;)Lo/宀;
    .locals 1

    iget-object v0, p0, Lo/ヾ;->DZ:Lo/宀;

    return-object v0
.end method

.method static synthetic ˊ(Lo/ヾ;Lo/ヾ$ˏ;)Lo/ヾ$ˏ;
    .locals 0

    iput-object p1, p0, Lo/ヾ;->Eg:Lo/ヾ$ˏ;

    return-object p1
.end method

.method static synthetic ˊ(Lo/ヾ;)Lo/乀;
    .locals 1

    iget-object v0, p0, Lo/ヾ;->CD:Lo/乀;

    return-object v0
.end method

.method static synthetic ˊ(Lo/ヾ;Lo/ﭞ;)Lo/ﭞ;
    .locals 0

    iput-object p1, p0, Lo/ヾ;->Eb:Lo/ﭞ;

    return-object p1
.end method

.method private ˊ(ILandroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lo/ﺧ;->ᒽ(Z)V

    iget-object v2, p0, Lo/ヾ;->Ea:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput p1, p0, Lo/ヾ;->Eh:I

    iput-object p2, p0, Lo/ヾ;->Ee:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :goto_3
    return-void
.end method

.method static synthetic ˊ(Lo/ヾ;ILandroid/os/IInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/ヾ;->ˊ(ILandroid/os/IInterface;)V

    return-void
.end method

.method private ˊ(IILandroid/os/IInterface;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v1, p0, Lo/ヾ;->Ea:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lo/ヾ;->Eh:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p2, p3}, Lo/ヾ;->ˊ(ILandroid/os/IInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method static synthetic ˊ(Lo/ヾ;IILandroid/os/IInterface;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lo/ヾ;->ˊ(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method static synthetic ˋ(Lo/ヾ;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lo/ヾ;->Ef:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic ˎ(Lo/ヾ;)Z
    .locals 1

    iget-boolean v0, p0, Lo/ヾ;->Ec:Z

    return v0
.end method

.method static synthetic ˏ(Lo/ヾ;)Lo/ᒴ$ˏ;
    .locals 1

    iget-object v0, p0, Lo/ヾ;->Ed:Lo/ᒴ$ˏ;

    return-object v0
.end method

.method private ͺ(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;)Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lo/ヾ;->ι(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    goto :goto_0

    :cond_3
    return-object v2
.end method

.method static synthetic ᐝ(Lo/ヾ;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/ヾ;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ヾ;->Ei:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/ヾ;->ˊ(ILandroid/os/IInterface;)V

    iget-object v0, p0, Lo/ヾ;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/ძ;->ٴ(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/ヾ;->ˊ(ILandroid/os/IInterface;)V

    iget-object v0, p0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lo/ヾ;->Eg:Lo/ヾ$ˏ;

    if-eqz v0, :cond_1

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lo/ヾ;->ᘣ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lo/ヾ;->DZ:Lo/宀;

    invoke-virtual {p0}, Lo/ヾ;->ᘣ()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/ヾ;->Eg:Lo/ヾ$ˏ;

    invoke-virtual {p0}, Lo/ヾ;->ᘧ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/宀;->ˋ(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lo/ヾ$ˏ;

    invoke-direct {v0, p0}, Lo/ヾ$ˏ;-><init>(Lo/ヾ;)V

    iput-object v0, p0, Lo/ヾ;->Eg:Lo/ヾ$ˏ;

    iget-object v0, p0, Lo/ヾ;->DZ:Lo/宀;

    invoke-virtual {p0}, Lo/ヾ;->ᘣ()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/ヾ;->Eg:Lo/ヾ$ˏ;

    invoke-virtual {p0}, Lo/ヾ;->ᘧ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/宀;->ˊ(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lo/ヾ;->ᘣ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    return-void
.end method

.method public disconnect()V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ヾ;->Ei:Z

    iget-object v4, p0, Lo/ヾ;->Ef:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lo/ヾ;->Ef:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    iget-object v0, p0, Lo/ヾ;->Ef:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ヾ$ˋ;

    invoke-virtual {v0}, Lo/ヾ$ˋ;->ẏ()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ヾ;->Ef:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v4

    throw v7

    :goto_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/ヾ;->ˊ(ILandroid/os/IInterface;)V

    iget-object v0, p0, Lo/ヾ;->Eg:Lo/ヾ$ˏ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ヾ;->DZ:Lo/宀;

    invoke-virtual {p0}, Lo/ヾ;->ᘣ()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/ヾ;->Eg:Lo/ヾ$ˏ;

    invoke-virtual {p0}, Lo/ヾ;->ᘧ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/宀;->ˋ(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ヾ;->Eg:Lo/ヾ$ˏ;

    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "GmsClient:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mStartServiceAction="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lo/ヾ;->ᘣ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lo/ヾ;->Ea:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v3, p0, Lo/ヾ;->Eh:I

    iget-object v4, p0, Lo/ヾ;->Ee:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    :goto_0
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mConnectState="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "CONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string v0, "CONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v0, "DISCONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v0, "DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    const-string v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    const-string v0, " mService="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v4, :cond_0

    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lo/ヾ;->ᘦ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/ヾ;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isConnected()Z
    .locals 4

    iget-object v2, p0, Lo/ヾ;->Ea:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Lo/ヾ;->Eh:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public isConnecting()Z
    .locals 4

    iget-object v2, p0, Lo/ヾ;->Ea:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Lo/ヾ;->Eh:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method protected ˊ(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    new-instance v2, Lo/ヾ$aux;

    invoke-direct {v2, p0, p1, p2, p3}, Lo/ヾ$aux;-><init>(Lo/ヾ;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public ˊ(Lo/ᒴ$ˊ;)V
    .locals 1

    iget-object v0, p0, Lo/ヾ;->CD:Lo/乀;

    invoke-virtual {v0, p1}, Lo/乀;->ˊ(Lo/ᒴ$ˊ;)V

    return-void
.end method

.method public ˊ(Lo/ᒴ$ˋ;)V
    .locals 1

    iget-object v0, p0, Lo/ヾ;->CD:Lo/乀;

    invoke-virtual {v0, p1}, Lo/乀;->ˊ(Lo/ᒴ$ˋ;)V

    return-void
.end method

.method public ˊ(Lo/ᒴ$ˏ;)V
    .locals 1

    const-string v0, "Must provide a non-null ConnectionStatusReportCallbacks"

    invoke-static {p1, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒴ$ˏ;

    iput-object v0, p0, Lo/ヾ;->Ed:Lo/ᒴ$ˏ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ヾ;->Ec:Z

    return-void
.end method

.method public ˊ(Lo/בֿ;)V
    .locals 5

    invoke-virtual {p0}, Lo/ヾ;->ᴦ()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/internal/zzae;

    iget-object v0, p0, Lo/ヾ;->CV:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ヾ;->CV:Ljava/util/List;

    invoke-static {v0}, Lo/h;->ʾ(Ljava/util/List;)[Lcom/google/android/gms/common/api/Scope;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lo/ヾ;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/zzae;-><init>(Lo/בֿ;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/String;Landroid/os/Bundle;)V

    :try_start_0
    iget-object v0, p0, Lo/ヾ;->Eb:Lo/ﭞ;

    new-instance v1, Lo/ヾ$ˎ;

    invoke-direct {v1, p0}, Lo/ヾ$ˎ;-><init>(Lo/ヾ;)V

    invoke-interface {v0, v1, v3}, Lo/ﭞ;->ˊ(Lo/ﭒ;Lcom/google/android/gms/common/internal/zzae;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v0, "GmsClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ヾ;->ᵃ(I)V

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v0, "GmsClient"

    const-string v1, "Remote exception occurred"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method protected abstract ˋ(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/os/IBinder;)TT;"
        }
    .end annotation
.end method

.method protected ˋ(ILandroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    new-instance v2, Lo/ヾ$ʻ;

    invoke-direct {v2, p0, p1, p2}, Lo/ヾ$ʻ;-><init>(Lo/ヾ;ILandroid/os/Bundle;)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public ˋ(Lo/בֿ;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lo/ヾ;->ᴉ()Landroid/os/Bundle;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/common/internal/zzi;

    iget v1, p0, Lo/ヾ;->Ej:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zzi;-><init>(I)V

    iget-object v1, p0, Lo/ヾ;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzi;->ᕀ(Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzi;->ˋ(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/zzi;

    move-result-object v3

    iget-object v0, p0, Lo/ヾ;->CV:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ヾ;->CV:Ljava/util/List;

    invoke-static {v0}, Lo/h;->ʾ(Ljava/util/List;)[Lcom/google/android/gms/common/api/Scope;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/internal/zzi;->ˊ([Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/internal/zzi;

    :cond_0
    invoke-virtual {p0}, Lo/ヾ;->ट()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/ヾ;->ᖬ()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/internal/zzi;->ˊ(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/zzi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzi;->ˏ(Lo/בֿ;)Lcom/google/android/gms/common/internal/zzi;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/ヾ;->ᴩ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ヾ;->Cc:Landroid/accounts/Account;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/internal/zzi;->ˊ(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/zzi;

    :cond_2
    :goto_0
    iget-object v0, p0, Lo/ヾ;->Eb:Lo/ﭞ;

    new-instance v1, Lo/ヾ$ˎ;

    invoke-direct {v1, p0}, Lo/ヾ$ˎ;-><init>(Lo/ヾ;)V

    invoke-interface {v0, v1, v3}, Lo/ﭞ;->ˊ(Lo/ﭒ;Lcom/google/android/gms/common/internal/zzi;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v0, "GmsClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ヾ;->ᵃ(I)V

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v0, "GmsClient"

    const-string v1, "Remote exception occurred"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public ट()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ᐵ()Z
    .locals 1

    iget-boolean v0, p0, Lo/ヾ;->Ei:Z

    return v0
.end method

.method public ᑈ()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ᖬ()Landroid/accounts/Account;
    .locals 3

    iget-object v0, p0, Lo/ヾ;->Cc:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ヾ;->Cc:Landroid/accounts/Account;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected abstract ᘣ()Ljava/lang/String;
.end method

.method protected abstract ᘦ()Ljava/lang/String;
.end method

.method protected ᘧ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/ヾ;->DY:Lo/ぃ;

    invoke-virtual {v0}, Lo/ぃ;->ᖿ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ᴉ()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected final ᴘ()V
    .locals 2

    invoke-virtual {p0}, Lo/ヾ;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final ᴝ()Landroid/os/IInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v2, p0, Lo/ヾ;->Ea:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Lo/ヾ;->Eh:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lo/ヾ;->ᴘ()V

    iget-object v0, p0, Lo/ヾ;->Ee:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Client is connected but service is null"

    invoke-static {v0, v1}, Lo/ﺧ;->ˎ(ZLjava/lang/Object;)V

    iget-object v0, p0, Lo/ヾ;->Ee:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method protected ᴦ()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ᴩ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ᵃ(I)V
    .locals 4

    iget-object v0, p0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/ヾ;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected ι(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;)Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation

    return-object p1
.end method
