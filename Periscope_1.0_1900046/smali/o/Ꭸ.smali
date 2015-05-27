.class public Lo/Ꭸ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final lR:Lo/Ꭸ;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private volatile lS:Lo/ᕻ;

.field final lT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Landroid/app/FragmentManager;Lo/\u13a2;>;"
        }
    .end annotation
.end field

.field final lU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/\u02c8;Lo/\u14a9;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lo/Ꭸ;

    invoke-direct {v0}, Lo/Ꭸ;-><init>()V

    sput-object v0, Lo/Ꭸ;->lR:Lo/Ꭸ;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Ꭸ;->lT:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Ꭸ;->lU:Ljava/util/Map;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/Ꭸ;->handler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private static ʼ(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load for a destroyed activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    return-void
.end method

.method private ˑ(Landroid/content/Context;)Lo/ᕻ;
    .locals 6

    .line 67
    iget-object v0, p0, Lo/Ꭸ;->lS:Lo/ᕻ;

    if-nez v0, :cond_1

    .line 68
    move-object v4, p0

    monitor-enter v4

    .line 69
    :try_start_0
    iget-object v0, p0, Lo/Ꭸ;->lS:Lo/ᕻ;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lo/ᕻ;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lo/ה;

    invoke-direct {v2}, Lo/ה;-><init>()V

    new-instance v3, Lo/ܥ;

    invoke-direct {v3}, Lo/ܥ;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lo/ᕻ;-><init>(Landroid/content/Context;Lo/ধ;Lo/Ꮠ;)V

    iput-object v0, p0, Lo/Ꭸ;->lS:Lo/ᕻ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 79
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/Ꭸ;->lS:Lo/ᕻ;

    return-object v0
.end method

.method public static ร()Lo/Ꭸ;
    .locals 1

    .line 57
    sget-object v0, Lo/Ꭸ;->lR:Lo/Ꭸ;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 206
    const/4 v3, 0x1

    .line 207
    const/4 v4, 0x0

    .line 208
    const/4 v5, 0x0

    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 211
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/FragmentManager;

    move-object v6, v0

    .line 212
    move-object v5, v6

    .line 213
    iget-object v0, p0, Lo/Ꭸ;->lT:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 214
    goto :goto_1

    .line 216
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/ˈ;

    move-object v7, v0

    .line 217
    move-object v5, v7

    .line 218
    iget-object v0, p0, Lo/Ꭸ;->lU:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 219
    goto :goto_1

    .line 221
    :goto_0
    const/4 v3, 0x0

    .line 223
    :goto_1
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    const-string v0, "RMRetriever"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "RMRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    return v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public ʻ(Landroid/app/Activity;)Lo/ᕻ;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 122
    invoke-static {}, Lo/ﾕ;->ﮇ()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Ꭸ;->ـ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    return-object v0

    .line 125
    :cond_1
    invoke-static {p1}, Lo/Ꭸ;->ʼ(Landroid/app/Activity;)V

    .line 126
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 127
    invoke-virtual {p0, p1, v2}, Lo/Ꭸ;->ˊ(Landroid/content/Context;Landroid/app/FragmentManager;)Lo/ᕻ;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Landroid/app/FragmentManager;)Lo/Ꭲ;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 153
    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/Ꭲ;

    move-object v2, v0

    .line 154
    if-nez v2, :cond_0

    .line 155
    iget-object v0, p0, Lo/Ꭸ;->lT:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ꭲ;

    move-object v2, v0

    .line 156
    if-nez v2, :cond_0

    .line 157
    new-instance v2, Lo/Ꭲ;

    invoke-direct {v2}, Lo/Ꭲ;-><init>()V

    .line 158
    iget-object v0, p0, Lo/Ꭸ;->lT:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "com.bumptech.glide.manager"

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 160
    iget-object v0, p0, Lo/Ꭸ;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    :cond_0
    return-object v2
.end method

.method ˊ(Lo/ˈ;)Lo/ᒩ;
    .locals 3

    .line 178
    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Lo/ˈ;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/ᒩ;

    move-object v2, v0

    .line 182
    if-nez v2, :cond_0

    .line 183
    iget-object v0, p0, Lo/Ꭸ;->lU:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒩ;

    move-object v2, v0

    .line 184
    if-nez v2, :cond_0

    .line 185
    new-instance v2, Lo/ᒩ;

    invoke-direct {v2}, Lo/ᒩ;-><init>()V

    .line 186
    iget-object v0, p0, Lo/Ꭸ;->lU:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {p1}, Lo/ˈ;->ˋ()Lo/ᐨ;

    move-result-object v0

    const-string v1, "com.bumptech.glide.manager"

    invoke-virtual {v0, v2, v1}, Lo/ᐨ;->ˊ(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Lo/ᐨ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᐨ;->commitAllowingStateLoss()I

    .line 188
    iget-object v0, p0, Lo/Ꭸ;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 191
    :cond_0
    return-object v2
.end method

.method ˊ(Landroid/content/Context;Landroid/app/FragmentManager;)Lo/ᕻ;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 168
    invoke-virtual {p0, p2}, Lo/Ꭸ;->ˊ(Landroid/app/FragmentManager;)Lo/Ꭲ;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Lo/Ꭲ;->ܥ()Lo/ᕻ;

    move-result-object v3

    .line 170
    if-nez v3, :cond_0

    .line 171
    new-instance v3, Lo/ᕻ;

    invoke-virtual {v2}, Lo/Ꭲ;->ں()Lo/ԇ;

    move-result-object v0

    invoke-virtual {v2}, Lo/Ꭲ;->ধ()Lo/Ꮠ;

    move-result-object v1

    invoke-direct {v3, p1, v0, v1}, Lo/ᕻ;-><init>(Landroid/content/Context;Lo/ধ;Lo/Ꮠ;)V

    .line 172
    invoke-virtual {v2, v3}, Lo/Ꭲ;->ʼ(Lo/ᕻ;)V

    .line 174
    :cond_0
    return-object v3
.end method

.method ˊ(Landroid/content/Context;Lo/ˈ;)Lo/ᕻ;
    .locals 4

    .line 195
    invoke-virtual {p0, p2}, Lo/Ꭸ;->ˊ(Lo/ˈ;)Lo/ᒩ;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lo/ᒩ;->ܥ()Lo/ᕻ;

    move-result-object v3

    .line 197
    if-nez v3, :cond_0

    .line 198
    new-instance v3, Lo/ᕻ;

    invoke-virtual {v2}, Lo/ᒩ;->ں()Lo/ԇ;

    move-result-object v0

    invoke-virtual {v2}, Lo/ᒩ;->ধ()Lo/Ꮠ;

    move-result-object v1

    invoke-direct {v3, p1, v0, v1}, Lo/ᕻ;-><init>(Landroid/content/Context;Lo/ধ;Lo/Ꮠ;)V

    .line 199
    invoke-virtual {v2, v3}, Lo/ᒩ;->ʼ(Lo/ᕻ;)V

    .line 201
    :cond_0
    return-object v3
.end method

.method public ˋ(Lo/ι;)Lo/ᕻ;
    .locals 2

    .line 99
    invoke-static {}, Lo/ﾕ;->ﮇ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Lo/ι;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Ꭸ;->ـ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    invoke-static {p1}, Lo/Ꭸ;->ʼ(Landroid/app/Activity;)V

    .line 103
    invoke-virtual {p1}, Lo/ι;->getSupportFragmentManager()Lo/ˈ;

    move-result-object v1

    .line 104
    invoke-virtual {p0, p1, v1}, Lo/Ꭸ;->ˊ(Landroid/content/Context;Lo/ˈ;)Lo/ᕻ;

    move-result-object v0

    return-object v0
.end method

.method public ـ(Landroid/content/Context;)Lo/ᕻ;
    .locals 2

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load on a null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    invoke-static {}, Lo/ﾕ;->ﭩ()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_3

    .line 86
    instance-of v0, p1, Lo/ι;

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Lo/ι;

    invoke-virtual {p0, v0}, Lo/Ꭸ;->ˋ(Lo/ι;)Lo/ᕻ;

    move-result-object v0

    return-object v0

    .line 88
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 89
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lo/Ꭸ;->ʻ(Landroid/app/Activity;)Lo/ᕻ;

    move-result-object v0

    return-object v0

    .line 90
    :cond_2
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_3

    .line 91
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Ꭸ;->ـ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    return-object v0

    .line 95
    :cond_3
    invoke-direct {p0, p1}, Lo/Ꭸ;->ˑ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    return-object v0
.end method
