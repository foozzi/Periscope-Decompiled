.class Lo/lk$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field PB:Lo/lu;

.field final synthetic PC:Lo/lk;


# direct methods
.method constructor <init>(Lo/lk;Lo/lu;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lo/lk$if;->PC:Lo/lk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p2, p0, Lo/lk$if;->PB:Lo/lu;

    .line 180
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 182
    iget-object v0, p0, Lo/lk$if;->PB:Lo/lu;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lo/lk$if;->PB:Lo/lu;

    invoke-virtual {v0}, Lo/lu;->aP()V

    .line 185
    :cond_0
    return-void
.end method
