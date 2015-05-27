.class public abstract Lo/宀;
.super Ljava/lang/Object;


# static fields
.field private static final Ev:Ljava/lang/Object;

.field private static Ew:Lo/宀;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/宀;->Ev:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ᵢ(Landroid/content/Context;)Lo/宀;
    .locals 4

    sget-object v2, Lo/宀;->Ev:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lo/宀;->Ew:Lo/宀;

    if-nez v0, :cond_0

    new-instance v0, Lo/ﬥ;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ﬥ;-><init>(Landroid/content/Context;)V

    sput-object v0, Lo/宀;->Ew:Lo/宀;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :goto_0
    sget-object v0, Lo/宀;->Ew:Lo/宀;

    return-object v0
.end method


# virtual methods
.method public abstract ˊ(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method public abstract ˋ(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method
