.class public interface abstract Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;
.super Ljava/lang/Object;
.source "GettingJibosRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\nJ\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository;",
        "",
        "getJibos",
        "",
        "callback",
        "Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;",
        "activity",
        "Landroid/support/v7/app/AppCompatActivity;",
        "isAuthenticated",
        "",
        "GetJibosCallback",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# virtual methods
.method public abstract getJibos(Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;Landroid/support/v7/app/AppCompatActivity;)V
    .param p1    # Lcom/everis/jibo/beamaker/repository/termsConditions/GettingJibosRepository$GetJibosCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isAuthenticated()Z
.end method
