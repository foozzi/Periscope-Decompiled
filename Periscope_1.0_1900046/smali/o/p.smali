.class public Lo/p;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/p$if;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/ᒴ;Lcom/google/android/gms/location/LocationRequest;Lo/ay;)Lo/ᒵ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14b4;Lcom/google/android/gms/location/LocationRequest;Lo/ay;)Lo/\u14b5<Lcom/google/android/gms/common/api/Status;>;"
        }
    .end annotation

    new-instance v0, Lo/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/q;-><init>(Lo/p;Lo/ᒴ;Lcom/google/android/gms/location/LocationRequest;Lo/ay;)V

    invoke-interface {p1, v0}, Lo/ᒴ;->ˋ(Lo/ᖧ$if;)Lo/ᖧ$if;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/ᒴ;Lo/ay;)Lo/ᒵ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14b4;Lo/ay;)Lo/\u14b5<Lcom/google/android/gms/common/api/Status;>;"
        }
    .end annotation

    new-instance v0, Lo/r;

    invoke-direct {v0, p0, p1, p2}, Lo/r;-><init>(Lo/p;Lo/ᒴ;Lo/ay;)V

    invoke-interface {p1, v0}, Lo/ᒴ;->ˋ(Lo/ᖧ$if;)Lo/ᖧ$if;

    move-result-object v0

    return-object v0
.end method
