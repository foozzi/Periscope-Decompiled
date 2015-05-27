.class abstract Lo/ﻌ$ᴵ;
.super Lo/ﻌ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﻌ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "\u1d35"
.end annotation


# static fields
.field private static final EX:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private EW:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo/ﻌ$ᴵ;->EX:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0, p1}, Lo/ﻌ$if;-><init>([B)V

    sget-object v0, Lo/ﻌ$ᴵ;->EX:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lo/ﻌ$ᴵ;->EW:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 4

    move-object v1, p0

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lo/ﻌ$ᴵ;->EW:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v2, v0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lo/ﻌ$ᴵ;->々()[B

    move-result-object v2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/ﻌ$ᴵ;->EW:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3
.end method

.method protected abstract 々()[B
.end method
