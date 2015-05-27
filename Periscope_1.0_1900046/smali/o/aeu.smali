.class Lo/aeu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bBV:Lo/aet;


# direct methods
.method constructor <init>(Lo/aet;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lo/aeu;->bBV:Lo/aet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 190
    iget-object v0, p0, Lo/aeu;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ˊ(Lo/aet;)V

    .line 191
    return-void
.end method
