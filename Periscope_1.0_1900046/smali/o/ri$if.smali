.class Lo/ri$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/concurrent/Executor;"
    }
.end annotation


# instance fields
.field private final Xk:Lo/ri;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/ri;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lo/ri$if;->executor:Ljava/util/concurrent/Executor;

    .line 92
    iput-object p2, p0, Lo/ri$if;->Xk:Lo/ri;

    .line 93
    return-void
.end method

.method static synthetic ˊ(Lo/ri$if;)Lo/ri;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/ri$if;->Xk:Lo/ri;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lo/ri$if;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/rj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lo/rj;-><init>(Lo/ri$if;Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
