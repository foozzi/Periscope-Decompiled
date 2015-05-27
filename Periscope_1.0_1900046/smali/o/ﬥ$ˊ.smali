.class final Lo/ﬥ$ˊ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﬥ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﬥ$ˊ$if;
    }
.end annotation


# instance fields
.field private DD:Landroid/os/IBinder;

.field private EC:Landroid/content/ComponentName;

.field private final ED:Lo/ﬥ$ˊ$if;

.field private final EE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Landroid/content/ServiceConnection;>;"
        }
    .end annotation
.end field

.field private EF:Z

.field private final EG:Lo/ﬥ$if;

.field final synthetic EH:Lo/ﬥ;

.field private mState:I


# direct methods
.method public constructor <init>(Lo/ﬥ;Lo/ﬥ$if;)V
    .locals 1

    iput-object p1, p0, Lo/ﬥ$ˊ;->EH:Lo/ﬥ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/ﬥ$ˊ;->EG:Lo/ﬥ$if;

    new-instance v0, Lo/ﬥ$ˊ$if;

    invoke-direct {v0, p0}, Lo/ﬥ$ˊ$if;-><init>(Lo/ﬥ$ˊ;)V

    iput-object v0, p0, Lo/ﬥ$ˊ;->ED:Lo/ﬥ$ˊ$if;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ﬥ$ˊ;->EE:Ljava/util/Set;

    const/4 v0, 0x2

    iput v0, p0, Lo/ﬥ$ˊ;->mState:I

    return-void
.end method

.method static synthetic ˊ(Lo/ﬥ$ˊ;I)I
    .locals 0

    iput p1, p0, Lo/ﬥ$ˊ;->mState:I

    return p1
.end method

.method static synthetic ˊ(Lo/ﬥ$ˊ;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lo/ﬥ$ˊ;->EC:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic ˊ(Lo/ﬥ$ˊ;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lo/ﬥ$ˊ;->DD:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic ˊ(Lo/ﬥ$ˊ;)Lo/ﬥ$if;
    .locals 1

    iget-object v0, p0, Lo/ﬥ$ˊ;->EG:Lo/ﬥ$if;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ﬥ$ˊ;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lo/ﬥ$ˊ;->EE:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lo/ﬥ$ˊ;->DD:Landroid/os/IBinder;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lo/ﬥ$ˊ;->EC:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lo/ﬥ$ˊ;->mState:I

    return v0
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Lo/ﬥ$ˊ;->EF:Z

    return v0
.end method

.method public ˊ(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lo/ﬥ$ˊ;->EH:Lo/ﬥ;

    invoke-static {v0}, Lo/ﬥ;->ˎ(Lo/ﬥ;)Lo/a;

    move-result-object v0

    iget-object v1, p0, Lo/ﬥ$ˊ;->EH:Lo/ﬥ;

    invoke-static {v1}, Lo/ﬥ;->ˋ(Lo/ﬥ;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/ﬥ$ˊ;->EG:Lo/ﬥ$if;

    invoke-virtual {v2}, Lo/ﬥ$if;->ỵ()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lo/a;->ˊ(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v0, p0, Lo/ﬥ$ˊ;->EE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ˊ(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, Lo/ﬥ$ˊ;->EE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ˋ(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lo/ﬥ$ˊ;->EH:Lo/ﬥ;

    invoke-static {v0}, Lo/ﬥ;->ˎ(Lo/ﬥ;)Lo/a;

    move-result-object v0

    iget-object v1, p0, Lo/ﬥ$ˊ;->EH:Lo/ﬥ;

    invoke-static {v1}, Lo/ﬥ;->ˋ(Lo/ﬥ;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/a;->ˋ(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lo/ﬥ$ˊ;->EE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public ᵕ(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lo/ﬥ$ˊ;->EH:Lo/ﬥ;

    invoke-static {v0}, Lo/ﬥ;->ˎ(Lo/ﬥ;)Lo/a;

    move-result-object v0

    iget-object v1, p0, Lo/ﬥ$ˊ;->EH:Lo/ﬥ;

    invoke-static {v1}, Lo/ﬥ;->ˋ(Lo/ﬥ;)Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    iget-object v3, p0, Lo/ﬥ$ˊ;->EG:Lo/ﬥ$if;

    invoke-virtual {v3}, Lo/ﬥ$if;->ỵ()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lo/ﬥ$ˊ;->ED:Lo/ﬥ$ˊ$if;

    const/16 v5, 0x81

    invoke-virtual/range {v0 .. v5}, Lo/a;->ˊ(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lo/ﬥ$ˊ;->EF:Z

    iget-boolean v0, p0, Lo/ﬥ$ˊ;->EF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lo/ﬥ$ˊ;->mState:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ﬥ$ˊ;->EH:Lo/ﬥ;

    invoke-static {v0}, Lo/ﬥ;->ˎ(Lo/ﬥ;)Lo/a;

    move-result-object v0

    iget-object v1, p0, Lo/ﬥ$ˊ;->EH:Lo/ﬥ;

    invoke-static {v1}, Lo/ﬥ;->ˋ(Lo/ﬥ;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/ﬥ$ˊ;->ED:Lo/ﬥ$ˊ$if;

    invoke-virtual {v0, v1, v2}, Lo/a;->ˊ(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :goto_0
    return-void
.end method

.method public ᵣ(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lo/ﬥ$ˊ;->EH:Lo/ﬥ;

    invoke-static {v0}, Lo/ﬥ;->ˎ(Lo/ﬥ;)Lo/a;

    move-result-object v0

    iget-object v1, p0, Lo/ﬥ$ˊ;->EH:Lo/ﬥ;

    invoke-static {v1}, Lo/ﬥ;->ˋ(Lo/ﬥ;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/ﬥ$ˊ;->ED:Lo/ﬥ$ˊ$if;

    invoke-virtual {v0, v1, v2}, Lo/a;->ˊ(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﬥ$ˊ;->EF:Z

    const/4 v0, 0x2

    iput v0, p0, Lo/ﬥ$ˊ;->mState:I

    return-void
.end method

.method public Ἶ()Z
    .locals 1

    iget-object v0, p0, Lo/ﬥ$ˊ;->EE:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
