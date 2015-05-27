.class Lo/yq$ˏ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/yq$ˏ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private bqU:Lo/yq$ˏ;


# direct methods
.method constructor <init>(Lo/yq$ˏ;)V
    .locals 0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Lo/yq$ˏ$if;->bqU:Lo/yq$ˏ;

    .line 523
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 527
    iget-object v0, p0, Lo/yq$ˏ$if;->bqU:Lo/yq$ˏ;

    invoke-virtual {v0}, Lo/yq$ˏ;->run()V

    .line 528
    return-void
.end method
