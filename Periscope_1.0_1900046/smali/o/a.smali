.class public Lo/a;
.super Ljava/lang/Object;


# static fields
.field private static final Ev:Ljava/lang/Object;

.field private static final FC:Landroid/content/ComponentName;

.field private static Fx:Lo/a;


# instance fields
.field private final FA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final FB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private FD:Lo/d;

.field private final Fy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final Fz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/a;->Ev:Ljava/lang/Object;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/a;->FC:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lo/a;->ﺟ()I

    move-result v0

    sget v1, Lo/c;->FL:I

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lo/a;->Fy:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lo/a;->Fz:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lo/a;->FA:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lo/a;->FB:Ljava/util/List;

    return-void

    :cond_0
    sget-object v0, Lo/b$if;->FG:Lo/ﻏ;

    invoke-virtual {v0}, Lo/ﻏ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_1
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/a;->Fy:Ljava/util/List;

    sget-object v0, Lo/b$if;->FH:Lo/ﻏ;

    invoke-virtual {v0}, Lo/ﻏ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_2
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/a;->Fz:Ljava/util/List;

    sget-object v0, Lo/b$if;->FI:Lo/ﻏ;

    invoke-virtual {v0}, Lo/ﻏ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_3

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_3
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lo/a;->FA:Ljava/util/List;

    sget-object v0, Lo/b$if;->FJ:Lo/ﻏ;

    invoke-virtual {v0}, Lo/ﻏ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_4

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3

    :cond_4
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lo/a;->FB:Ljava/util/List;

    new-instance v0, Lo/d;

    sget-object v1, Lo/b$if;->FK:Lo/ﻏ;

    invoke-virtual {v1}, Lo/ﻏ;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x400

    invoke-direct {v0, v3, v1, v2}, Lo/d;-><init>(IJ)V

    iput-object v0, p0, Lo/a;->FD:Lo/d;

    return-void
.end method

.method private ˊ(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 18

    sget-boolean v0, Lo/々;->DL:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lo/a;->ˋ(Landroid/content/ServiceConnection;)J

    move-result-wide v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-wide v4, v11

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lo/a;->ˊ(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v0, 0x3

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lo/g;->ᐤ(II)Ljava/lang/String;

    move-result-object v16

    const-string v0, "UNBIND"

    move-object/from16 v1, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DISCONNECT"

    move-object/from16 v1, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzlm;

    move-wide v1, v13

    move-object/from16 v3, p5

    move-object/from16 v8, v16

    move-wide v9, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzlm;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v15, v0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lo/a;->ˋ(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v17

    new-instance v0, Lcom/google/android/gms/internal/zzlm;

    move-wide v1, v13

    move-object/from16 v3, p5

    invoke-static/range {p1 .. p1}, Lo/g;->ﹶ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p3

    move-object/from16 v6, v17

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v7, v17

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v8, v16

    move-wide v9, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzlm;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v15, v0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lo/a;->FC:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private ˊ(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;JLjava/lang/String;)Z
    .locals 7

    invoke-direct {p0}, Lo/a;->ﺟ()I

    move-result v2

    sget v0, Lo/c;->FL:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lo/a;->FD:Lo/d;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "DISCONNECT"

    if-eq p6, v0, :cond_2

    const-string v0, "UNBIND"

    if-ne p6, v0, :cond_4

    :cond_2
    iget-object v0, p0, Lo/a;->FD:Lo/d;

    invoke-virtual {v0, p4, p5}, Lo/d;->ˮ(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-static {p1, p3}, Lo/a;->ˋ(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_5
    invoke-static {p1}, Lo/g;->ﹶ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lo/a;->Fy:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lo/a;->Fz:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lo/a;->FA:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lo/a;->FB:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lo/c;->FP:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x0

    return v0

    :cond_7
    iget-object v0, p0, Lo/a;->FD:Lo/d;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/d;->ˊ(Ljava/lang/Long;)Ljava/lang/Long;

    const/4 v0, 0x1

    return v0
.end method

.method private ˋ(Landroid/content/ServiceConnection;)J
    .locals 4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static ˋ(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ConnectionTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are no handler of this intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const-string v0, "ConnectionTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are multiple handlers for this intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object v5, v0

    const-string v0, "ConnectionTracker"

    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public static ﺕ()Lo/a;
    .locals 3

    sget-object v1, Lo/a;->Ev:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lo/a;->Fx:Lo/a;

    if-nez v0, :cond_0

    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    sput-object v0, Lo/a;->Fx:Lo/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :goto_0
    sget-object v0, Lo/a;->Fx:Lo/a;

    return-object v0
.end method

.method private ﺟ()I
    .locals 3

    :try_start_0
    sget-boolean v0, Lo/々;->DL:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lo/ﻏ;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/ﻏ;->ッ()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lo/b$if;->FF:Lo/ﻏ;

    invoke-virtual {v0}, Lo/ﻏ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lo/c;->FL:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    sget v0, Lo/c;->FL:I

    return v0
.end method


# virtual methods
.method public ˊ(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v5, "UNBIND"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lo/a;->ˊ(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public ˊ(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const-string v5, "CONNECT"

    invoke-direct/range {v0 .. v5}, Lo/a;->ˊ(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public ˊ(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    const-string v5, "BIND"

    invoke-direct/range {v0 .. v5}, Lo/a;->ˊ(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public ˋ(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v5, "DISCONNECT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lo/a;->ˊ(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
