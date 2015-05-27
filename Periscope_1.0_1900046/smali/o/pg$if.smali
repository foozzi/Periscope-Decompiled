.class Lo/pg$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final UH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
        }
    .end annotation
.end field

.field private final pu:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/pg$if;->UH:Ljava/util/Set;

    .line 70
    iput-object p1, p0, Lo/pg$if;->pu:Landroid/app/Application;

    .line 71
    return-void
.end method

.method static synthetic ˊ(Lo/pg$if;Lo/pg$ˊ;)Z
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Lo/pg$if;->ˋ(Lo/pg$ˊ;)Z

    move-result v0

    return v0
.end method

.method private ˋ(Lo/pg$ˊ;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 83
    iget-object v0, p0, Lo/pg$if;->pu:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Lo/ph;

    invoke-direct {v1, p0, p1}, Lo/ph;-><init>(Lo/pg$if;Lo/pg$ˊ;)V

    .line 123
    iget-object v0, p0, Lo/pg$if;->pu:Landroid/app/Application;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 124
    iget-object v0, p0, Lo/pg$if;->UH:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
