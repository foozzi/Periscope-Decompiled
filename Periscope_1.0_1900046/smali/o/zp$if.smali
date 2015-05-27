.class Lo/zp$if;
.super Lo/zw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Lo/xh;>;)V"
        }
    .end annotation

    .line 238
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lo/zw;-><init>(Ljava/util/Map;I)V

    .line 239
    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 253
    const-string v0, "global_provider"

    return-object v0
.end method

.method protected ˎ(Lo/xh;)Z
    .locals 1

    .line 243
    iget-boolean v0, p1, Lo/xh;->boV:Z

    return v0
.end method

.method public ᐝ(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Collection<Lo/anh;>;)V"
        }
    .end annotation

    .line 249
    return-void
.end method
